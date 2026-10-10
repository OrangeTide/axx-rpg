# Typst publishing pipeline.
#
# Every src/NAME.typ becomes build/NAME.pdf. The shared page style lives
# in lib/, project fonts in fonts/.
#
#   make            build all PDFs
#   make watch      rebuild on change (first source only, or SRC=src/x.typ)
#   make png        page previews in build/ for a quick visual check
#   make clean      remove build/

TYPST    ?= typst
FONTDIR  := fonts
SRCDIR   := src
LIBDIR   := lib
OUTDIR   := build

SOURCES  := $(wildcard $(SRCDIR)/*.typ)
PDFS     := $(patsubst $(SRCDIR)/%.typ,$(OUTDIR)/%.pdf,$(SOURCES))
PNGS     := $(patsubst $(SRCDIR)/%.typ,$(OUTDIR)/%-1.png,$(SOURCES))
LIBS     := $(wildcard $(LIBDIR)/*.typ)
FONTS    := $(wildcard $(FONTDIR)/*.otf $(FONTDIR)/*.ttf)

TYPSTFLAGS ?= --root . --font-path $(FONTDIR)

SRC ?= $(firstword $(SOURCES))

.PHONY: all pdf png watch fonts clean

all: pdf

pdf: $(PDFS)

png: $(PNGS)

$(OUTDIR):
	mkdir -p $@

$(OUTDIR)/%.pdf: $(SRCDIR)/%.typ $(LIBS) $(FONTS) | $(OUTDIR)
	$(TYPST) compile $(TYPSTFLAGS) $< $@

$(OUTDIR)/%-{n}.png $(OUTDIR)/%-1.png: $(SRCDIR)/%.typ $(LIBS) $(FONTS) | $(OUTDIR)
	$(TYPST) compile $(TYPSTFLAGS) --format png --ppi 110 $< $(OUTDIR)/$*-{n}.png

watch: | $(OUTDIR)
	$(TYPST) watch $(TYPSTFLAGS) $(SRC) $(OUTDIR)/$(notdir $(SRC:.typ=.pdf))

# List the fonts Typst can see, to verify the fonts/ directory is picked up.
fonts:
	$(TYPST) fonts --font-path $(FONTDIR) | grep -iE 'D-DIN|Roboto Condensed' || true

clean:
	rm -rf $(OUTDIR)
