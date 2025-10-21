#!/usr/bin/perl

# abw, 2015-10-14
# This code is free, do whatever you want with it. Credit would be nice but is not necessary.
# Written and tested on Windows, but should work anywhere perl works, which includes Macintosh, Unix, and Linux.

use strict;
use warnings;

my $usage = <<USAGE;
Usage:

perl FFVI_C2FF6D.pl -m <mode> [-g|-hi|-ho] -
perl FFVI_C2FF6D.pl -m <mode> [-g|-hi|-ho|-n|-s <start address>] <file>

Implements the decompression routine (a variant on LZ77 using a 0x800 byte sliding window, distinguishing length-distance pairs from literals by prefixing every group of 8 pairs/literals with a single byte, each bit of which controls whether the next corresponding byte is a literal or a length-distance pair; length-distance pairs are encoded as 2 bytes [abcdefgh ijklmnop] where length is [lmnop] and distance is [ijkabcdefgh]) found at 0xC2FF6D in at least the original Japanese and both English releases of Final Fantasy VI on the SNES.
Also implements a complementary compression routine to generate data that the aforementioned decompression routine will be able to decompress.

Options:

-g: instead of normal output, display and group data copied from buffer (mainly useful for debugging; try it if you're curious)
-hi: instead of raw binary, assume input is hex-encoded data
-ho: instead of raw binary, output hex-encoded data
-m <mode>: use 'c' for compression or 'd' for decompression
-n: when writing compression results to <file>, always overwrite the entire <file> instead of updating a portion of an existing file
-s <start address>: address to start reading from/writing to in <file> (defaults to 0, accepts both decimal and hexadecimal numbers [when prefixed with '0x'], ignored for compression to STDOUT)
<file>: name of file to read from/write to; use '-' if you want <file> to be STDIN or STDOUT

Decompression works from <file> to STDOUT, compression works from STDIN to <file>. Note that compression output *overwrites* whatever part of <file> you tell it to, so you should probably make backups and test it with STDOUT before doing anything dangerous - nobody wants you to accidentally destroy any of your hard work!

Some examples:
- decompress data from ROM starting from 0x2686C:
perl FFVI_C2FF6D.pl -m d -s 0x2686C "Final Fantasy III (U) (V1.0) [!].smc"
- same thing but using decimal start address:
perl FFVI_C2FF6D.pl -m d -s 157804 "Final Fantasy III (U) (V1.0) [!].smc"

- same thing but with hex-encoded output:
perl FFVI_C2FF6D.pl -m d -ho -s 0x2686C "Final Fantasy III (U) (V1.0) [!].smc"

- decompress hex-encoded file compressed.txt, writing hex-encoded data to STDOUT
perl FFVI_C2FF6D.pl -m d -hi -ho compressed.txt
- same thing
perl FFVI_C2FF6D.pl -m d -hi -ho - < compressed.txt

- compress data from file decompressed.bin, writing to ROM at 0x2686C:
perl FFVI_C2FF6D.pl -m c -s 0x2686C "Final Fantasy III (U) (V1.0) [!].smc" < decompressed.bin

- compress hex-encoded data from file decompressed.txt, writing to ROM at 0x2686C:
perl FFVI_C2FF6D.pl -m c -hi -s 0x2686C "Final Fantasy III (U) (V1.0) [!].smc" < decompressed.txt

- same thing, but as a filter
cat decompressed.txt | perl FFVI_C2FF6D.pl -m c -hi -s 0x2686C "Final Fantasy III (U) (V1.0) [!].smc"

- speaking of filters, assuming data has already been optimally compressed, this should be a super-expensive nop:
perl FFVI_C2FF6D.pl -m d -s 0x2686C "Final Fantasy III (U) (V1.0) [!].smc" | perl FFVI_C2FF6D.pl -m c -s 0x2686C "Final Fantasy III (U) (V1.0) [!].smc"
USAGE

# default values
my $file;
my $new_file = 0;
my $mode;
my $start_addr = 0;
my $hex_input = 0;
my $hex_output = 0;
my $group = 0;

# read options from command line
while (my $arg = shift(@ARGV)) {
	if ($arg eq '-g') {
		$group = 1;
	} elsif ($arg eq '-hi') {
		$hex_input = 1;
	} elsif ($arg eq '-ho') {
		$hex_output = 1;
	} elsif ($arg eq '-m') {
		$mode = lc(shift(@ARGV));
	} elsif ($arg eq '-n') {
		$new_file = 1;
	} elsif ($arg eq '-s') {
		$start_addr = lc(shift(@ARGV));
	} else {
		if (defined($file)) { # also covers unrecognized options
			die ($usage);
		}
		$file = $arg;
	}
}
if (!defined($mode) || $mode !~ /^[cd]$/) {
	die ($usage);
}
if (substr($start_addr, 0, 2) eq '0x') {
	$start_addr = hex(substr($start_addr, 2));
}
if ($file ne '-' && $start_addr !~ /^\d+$/) {
	die ($usage);
}


my $buffer_size = 0x800;
my $buffer_index = 0x7de;
my @output = ();

if ($mode eq 'd') {
# decompress data
# this algorithm could be written a bit better, but it's as faithful to the official implementation as I cared to make it;
# as with the official implementation, make sure your initial 2-byte data length is correct or suffer the consequences

	# figure out where the compressed data is coming from
	if ($file eq '-') {
		local $/;
		$file = <STDIN>;
		open (FILE, '<', \$file) or die ("can't open STDIN for input?!");
	} else {
		open (FILE, '<', $file) or die ("can't open file '$file' for input");
	}
	binmode(FILE, ':raw');

	# figure out how much compressed data there is
	my $data_length_length = 2;
	if ($hex_input) {
		$data_length_length *= 2; # input takes up twice as many bytes
	}
	seek(FILE, $start_addr, 0) or die;
	(read(FILE, my $data_length, $data_length_length) == $data_length_length) or die ("can't read data length at file address 0x".sprintf('%x', tell(FILE)));
	if ($hex_input) {
		$data_length = (hex(substr($data_length, 2, 2).substr($data_length, 0, 2)) - 2) * 2;
	} else {
		$data_length = unpack('v', $data_length) - 2;
	}
	# read the entire compressed data into memory (2 bytes for length => compressed data can't be more than 64kb, so no worries about hogging memory on any system people are likely to actually run this code on)
	(read(FILE, my $data, $data_length) == $data_length) or die ("can't read ".sprintf('%04x', $data_length)." bytes at file address 0x".sprintf('%x', tell(FILE)));
	close (FILE);
	if ($hex_input) {
		$data = pack('H*', $data);
		$data_length /= 2; # now that we've converted back to binary, fix data_length
	}

	my @buffer = (pack('H2', 0)) x $buffer_size; # initialize buffer to the same thing Square does
	my $i = 0;
	while (1) {
		my @control = split(//, unpack('b8', substr($data, $i, 1)));
		$i++;
		foreach my $bit (@control) {
			if ($bit) { # copy 1 byte to output and buffer
				my $byte = substr($data, $i, 1);
				$i++;
				push(@output, $byte);
				$buffer[$buffer_index] = $byte;
				$buffer_index = ($buffer_index + 1) % $buffer_size;
			} else { # copy anywhere from 3 to 34 bytes from the buffer to output and back into buffer
				my $bytes = substr($data, $i, 2);
				$i += 2;
				my ($pointer_low, $pointer_high) = unpack('B8B8', $bytes);
				my $buffer_pointer = oct("0b".$pointer_low) + 256 * oct("0b".substr($pointer_high, 5, 3));
				my $copy_length = oct("0b".substr($pointer_high, 0, 5)) + 3;
				push(@output, '');
				foreach (1..$copy_length) {
					my $byte = $buffer[$buffer_pointer];
					$output[-1] .= $byte;
					$buffer_pointer = ($buffer_pointer + 1) % $buffer_size;
					$buffer[$buffer_index] = $byte;
					$buffer_index = ($buffer_index + 1) % $buffer_size;
				}
			}
			last if ($i == $data_length); # probably this should be if (($i % 0xFFFF) == $data_length), but let's pretend the compressed data behaves
		}
		last if ($i == $data_length);
	}

	# output according to command line options
	if ($hex_output) {
		@output = map {unpack('H*', $_)} @output;
	}
	my $separator = ($group ? "\n" : '');
	binmode(STDOUT, ':raw');
	print STDOUT join($separator, @output);
} elsif ($mode eq 'c') {
# compress data
# unlike whatever Square was using to compress their data, this algorithm will obtain the maximum compression ratio the decompression algorithm will allow

	# read decompressed data from STDIN
	my $text;
	{
		local $/;
		binmode(STDIN, ':raw');
		$text = <STDIN>;
	}
	if (!$hex_input) {
		$text = unpack('H*', $text);
	}
	# convert to array
	my @text = ();
	for (my $i = 0; $i < length($text); $i += 2) {
		push(@text, substr($text, $i, 2));
	}

	# rather than looping through all 2048 buffer bytes every time, let's keep track of where each byte appears in the buffer
	my %visible_buffer = ();
	my $initial_buffer_size = $buffer_size;
	if ($buffer_size > scalar(@text)) {
		$initial_buffer_size  = scalar(@text);
	}
	foreach (my $i = scalar(@text) - 2; $i >= scalar(@text) - $initial_buffer_size ; $i--) { # scalar(@text) - 2 since $text[$pos] won't be in the buffer yet
		push(@{$visible_buffer{$text[$i]}}, $i);
	}

	# stuff we'll need to remember for later use
	my @tokensByPos = ();
	my @indexByPos = ();
	my @costByPos = ();
	
	my $pos = scalar(@text) - 1;
	while (1) {
		# determine lowest cost of tokenization starting at $pos
		my $token = $text[$pos];

		# check for useable compression index
		foreach my $possible_match_index (@{$visible_buffer{$text[$pos]}}) {
			next if ($possible_match_index >= $pos);
			my $compression_token = '';
			my $offset = 0;
			while ($pos + $offset < scalar(@text) && $text[$possible_match_index + $offset] eq $text[$pos + $offset]) {
				$compression_token .= $text[$possible_match_index + $offset];
				$offset++;
				last if ($offset >= 34); # buffer copy length is constrained to 5 bits + 3 = 31 + 3 = 34
			}
			if (length($compression_token) > 4 && length($compression_token) > length($token)) { # no point in using buffer data unless we have more than 2 bytes (4 hex-encoded characters) to copy
				$token = $compression_token;
				$indexByPos[$pos] = $possible_match_index;
			}
		}
		# lowest cost of any tokenization starting at $pos is cost of $token + lowest cost of the tokenization starting at the position after $token
		my $cost = 1 + ($costByPos[$pos + length($token) / 2] || 0);
		if (!defined($costByPos[$pos]) || $cost <= $costByPos[$pos]) {
			$costByPos[$pos] = $cost;
			$tokensByPos[$pos] = $token;
		}

		$pos--;
		last if ($pos < 0);
		# update %visible_buffer entries
		shift(@{$visible_buffer{$text[$pos]}});
		next if ($pos < $buffer_size);
		push(@{$visible_buffer{$text[$pos - $buffer_size]}}, $pos - $buffer_size);
	}

	# now that we've found the lowest cost (and which token gives that lowest cost) for any tokenization starting at every position, pick the lowest cost tokenization starting at position 0
	my @output = ();
	$pos = 0;
	my $compressed_length = 2; # this will be the 2 byte header indicating the total size of the compression block
	my @control = ();
	my @groups = ();
	while ($pos < scalar(@text)) {
		my $token = $tokensByPos[$pos];
		if (length($token) > 2) { # something that got compressed
			my $index = ($buffer_index + $indexByPos[$pos]) % $buffer_size;
			$index = sprintf('%.11b', $index);
			my $length = sprintf('%.5b', length($token) / 2 - 3);
			my $pointer_low = pack('B8', substr($index, -8, 8));
			my $pointer_high = pack('B8', $length . substr($index, -11, 3));
			push(@control, $pointer_low.$pointer_high);
			$compressed_length += 2;
		} else { # a single byte
			push(@control, pack('H2', $token));
			$compressed_length++;
		}
		push(@groups, $token) if ($group);

		if (scalar(@control) == 8) { # set up our control byte and prepend it to its data
			push(@output, pack('b8', join('', map {length($_) == 1 ? 1 : 0} @control)), @control);
			$compressed_length++;
			@control = (); # reset control byte data
		}
		$pos += length($token) / 2;
	}
	if (scalar(@control)) { # if we have any data not covered by the last full control byte
		push(@output, pack('b8', join('', map {length($_) == 1 ? 1 : 0} @control)), @control);
		$compressed_length++;
	}

	if ($group) {
		@output = @groups; # maybe including control bytes would be useful too?
	}
	# add the 2 byte compression block size header
	unshift(@output, pack('v', $compressed_length));

	# output according to command line options
	if ($hex_output) {
		@output = map {unpack('H*', $_)} @output;
	}
	my $separator = ($group ? "\n" : '');
	if ($file ne '-') {
		if (!$new_file && -e $file) {
			open (FILE, '+<', $file) or die ("can't open file '$file' for update");
		} else {
			open (FILE, '>', $file) or die ("can't create file '$file'");
		}
		binmode(FILE, ':raw');
		seek(FILE, $start_addr, 0) or die;
		print FILE join($separator, @output);
		close (FILE);
	} else {
		binmode(STDOUT, ':raw');
		print STDOUT join($separator, @output);
	}
}
