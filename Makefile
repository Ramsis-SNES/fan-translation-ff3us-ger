# Requirements: see README.md

AS=wla-65816
ASFLAGS=-x -o
AS2=asar
LD=wlalink
LDFLAGS=-r -s
P=flips
PFLAGS=--create --bps-delta
PERL=perl
ROMTOOL=superfamicheck
ROMTOOLFLAGS=-f
SHELL=/bin/bash

# name of ROMs and associated files
# header=swc_header_24mb_hirom_sram.bin
header=swc_header_32mb_hirom_sram.bin
source=original/final_fantasy_3_v1.1.sfc
target=ff3us_ger

bps=$(target).bps
lnk=$(target).lnk
obj=$(target).obj
sfc=$(target).sfc
src=$(target).asm
swc=$(target).swc
sym=$(target).sym

.PHONY: all clean compressed_data

# all: compressed_data $(bps) $(swc)
all: compressed_data $(sfc)

$(bps): $(sfc)
	$(P) $(PFLAGS) $(source) $< $@

$(obj): $(src)
	$(AS) $(ASFLAGS) $@ $<

$(sfc): $(obj)
	echo -e '[objects]\n$<' > $(lnk)
	$(LD) $(LDFLAGS) $(lnk) $@
	$(ROMTOOL) $(ROMTOOLFLAGS) $@

$(swc): $(sfc)
	cat $(header) $< > $@

clean:
	-rm -f $(bps) $(lnk) $(obj) $(sfc) $(swc) $(sym) intro_credits/C2686C_compressed.bin intro_credits/Final_Fantasy_VI_7E5000_from_C2686C.sfc

compressed_data:
	cd intro_credits; \
	$(AS2) Final_Fantasy_VI_7E5000_from_C2686C.asm; \
	$(PERL) FFVI_C2FF6D.pl -m c C2686C_compressed.bin < Final_Fantasy_VI_7E5000_from_C2686C.sfc; \
	cd ..
