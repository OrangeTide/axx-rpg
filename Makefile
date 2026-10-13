# Typst publishing pipeline.
#
# Every .typ under src/ becomes a PDF under build/, mirroring the path.
# So src/axx.typ builds build/axx.pdf, and src/adv/skyship.typ builds
# build/adv/skyship.pdf. The shared page style lives in lib/, project
# fonts in fonts/.
#
#   make            build all PDFs
#   make html       reflowable HTML of every document (experimental Typst export)
#   make thumbs     first-page PNG cover thumbnails
#   make site       assemble the GitHub Pages site under _site/
#   make watch      rebuild on change (first source, or SRC=src/x.typ)
#   make png        page previews in build/ for a quick visual check
#   make clean      remove build/ and _site/

TYPST    ?= typst
FONTDIR  := fonts
SRCDIR   := src
LIBDIR   := lib
OUTDIR   := build
PAGESDIR := pages
SITEDIR  := _site

SOURCES  := $(shell find $(SRCDIR) -name '*.typ')
PDFS     := $(patsubst $(SRCDIR)/%.typ,$(OUTDIR)/%.pdf,$(SOURCES))
# The core also ships as a flat landscape reference, built from the same
# source with the landscape input. It has no own .typ, so it needs an explicit rule.
LANDSCAPEPDF := $(OUTDIR)/axx-landscape.pdf
HTMLS    := $(patsubst $(SRCDIR)/%.typ,$(OUTDIR)/%.html,$(SOURCES))
THUMBS   := $(patsubst $(SRCDIR)/%.typ,$(OUTDIR)/%.thumb.png,$(SOURCES))
# Landscape-build thumbnail for the core, so its home-page card shows the wide layout.
LANDSCAPETHUMB := $(OUTDIR)/axx-landscape.thumb.png
PNGS     := $(patsubst $(SRCDIR)/%.typ,$(OUTDIR)/%-1.png,$(SOURCES))
LIBS     := $(wildcard $(LIBDIR)/*.typ)
FONTS    := $(wildcard $(FONTDIR)/*.otf $(FONTDIR)/*.ttf)

# Revision stamp for document footers: a clean tag when HEAD is on one, else
# tag-count-ghash, with -dirty for an uncommitted build, and a bare hash before
# any tag exists. Empty when git is unavailable, which prints no stamp.
REV      := $(shell git describe --tags --always --dirty 2>/dev/null)
REVFILE  := $(OUTDIR)/rev.txt

# --features html enables the experimental HTML export and the target()
# query the page style uses to branch between its print and web layouts.
TYPSTFLAGS ?= --root . --font-path $(FONTDIR) --features html

SRC ?= $(firstword $(SOURCES))

.PHONY: all pdf html thumbs site png watch fonts clean FORCE

all: pdf

pdf: $(PDFS) $(LANDSCAPEPDF)

html: $(HTMLS)

thumbs: $(THUMBS) $(LANDSCAPETHUMB)

png: $(PNGS)

$(OUTDIR)/%.pdf: $(SRCDIR)/%.typ $(LIBS) $(FONTS) $(REVFILE)
	@mkdir -p $(dir $@)
	$(TYPST) compile $(TYPSTFLAGS) --input rev="$(REV)" $< $@

# The landscape reference layout of the core, same source, landscape input.
$(LANDSCAPEPDF): $(SRCDIR)/axx.typ $(LIBS) $(FONTS) $(REVFILE)
	@mkdir -p $(dir $@)
	$(TYPST) compile $(TYPSTFLAGS) --input landscape=true --input rev="$(REV)" $< $@

# Revision stamp file: rewritten only when the revision string changes, so a new
# commit rebuilds the PDFs while an unchanged tree leaves them untouched.
$(REVFILE): FORCE
	@mkdir -p $(dir $@)
	@printf '%s' '$(REV)' > $@.tmp
	@cmp -s $@.tmp $@ 2>/dev/null || mv $@.tmp $@
	@rm -f $@.tmp

FORCE:

$(OUTDIR)/%.html: $(SRCDIR)/%.typ $(LIBS) $(FONTS) $(REVFILE)
	@mkdir -p $(dir $@)
	$(TYPST) compile $(TYPSTFLAGS) --format html --input rev="$(REV)" $< $@

$(OUTDIR)/%.thumb.png: $(SRCDIR)/%.typ $(LIBS) $(FONTS)
	@mkdir -p $(dir $@)
	$(TYPST) compile $(TYPSTFLAGS) --format png --ppi 96 --pages 1 $< $@

# The core's landscape thumbnail, from the same source with the landscape input.
$(LANDSCAPETHUMB): $(SRCDIR)/axx.typ $(LIBS) $(FONTS)
	@mkdir -p $(dir $@)
	$(TYPST) compile $(TYPSTFLAGS) --input landscape=true --format png --ppi 96 --pages 1 $< $@

$(OUTDIR)/%-1.png: $(SRCDIR)/%.typ $(LIBS) $(FONTS)
	@mkdir -p $(dir $@)
	$(TYPST) compile $(TYPSTFLAGS) --format png --ppi 110 $< $(OUTDIR)/$*-{n}.png

# Assemble the static site: PDFs, HTML, thumbnails, and a generated index.
site: pdf html thumbs
	sh $(PAGESDIR)/gen-site.sh "$(SRCDIR)" "$(OUTDIR)" "$(PAGESDIR)" "$(SITEDIR)"

watch:
	@mkdir -p $(dir $(patsubst $(SRCDIR)/%.typ,$(OUTDIR)/%.pdf,$(SRC)))
	$(TYPST) watch $(TYPSTFLAGS) $(SRC) $(patsubst $(SRCDIR)/%.typ,$(OUTDIR)/%.pdf,$(SRC))

# List the fonts Typst can see, to verify the fonts/ directory is picked up.
fonts:
	$(TYPST) fonts --font-path $(FONTDIR) | grep -iE 'Goudy|Roboto Condensed|Courier Prime|D-DIN' || true

clean:
	rm -rf $(OUTDIR) $(SITEDIR)
