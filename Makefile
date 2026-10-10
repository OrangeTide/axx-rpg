# Typst publishing pipeline.
#
# Every .typ under src/ becomes a PDF under build/, mirroring the path.
# So src/axx.typ builds build/axx.pdf, and src/adv/skyship.typ builds
# build/adv/skyship.pdf. The shared page style lives in lib/, project
# fonts in fonts/.
#
#   make            build all PDFs
#   make watch      rebuild on change (first source, or SRC=src/x.typ)
#   make png        page previews in build/ for a quick visual check
#   make clean      remove build/

TYPST    ?= typst
FONTDIR  := fonts
SRCDIR   := src
LIBDIR   := lib
OUTDIR   := build

SOURCES  := $(shell find $(SRCDIR) -name '*.typ')
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

$(OUTDIR)/%.pdf: $(SRCDIR)/%.typ $(LIBS) $(FONTS)
	@mkdir -p $(dir $@)
	$(TYPST) compile $(TYPSTFLAGS) $< $@

$(OUTDIR)/%-1.png: $(SRCDIR)/%.typ $(LIBS) $(FONTS)
	@mkdir -p $(dir $@)
	$(TYPST) compile $(TYPSTFLAGS) --format png --ppi 110 $< $(OUTDIR)/$*-{n}.png

watch:
	@mkdir -p $(dir $(patsubst $(SRCDIR)/%.typ,$(OUTDIR)/%.pdf,$(SRC)))
	$(TYPST) watch $(TYPSTFLAGS) $(SRC) $(patsubst $(SRCDIR)/%.typ,$(OUTDIR)/%.pdf,$(SRC))

# List the fonts Typst can see, to verify the fonts/ directory is picked up.
fonts:
	$(TYPST) fonts --font-path $(FONTDIR) | grep -iE 'D-DIN|Roboto Condensed' || true

clean:
	rm -rf $(OUTDIR)
