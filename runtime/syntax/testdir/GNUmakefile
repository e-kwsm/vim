.PHONY: all
all: nroff

.PHONY: nroff
nroff:
	rm -f Xfilter messages testdeps.mk vimcmd
	$(MAKE) -C .. $@ test || { rm -f dumps/$@* ; mv failed/$@* dumps/ ; exit 1 ; }

%.html: %.nroff
	groff -T html $< > $@

%.pdf: %.nroff
	groff -T pdf $< > $@

.PHONY: cat
cat:
	nroff input/nroff.nroff | cat -s
