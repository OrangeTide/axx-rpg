# XD&X

An OSR refit of 1st Edition, laid out in the style of 24XX. Built with Typst.

## Layout

- `src/*.typ`: game documents. Each one becomes `build/NAME.pdf`.
- `lib/24xx.typ`: the 24XX page style and helpers (`xx`, `rolltable`, `item`, `k`, `bar`).
- `fonts/`: D-DIN (SIL OFL) and Roboto Condensed (Apache 2.0), used by the style.

## Building

    make            build all PDFs into build/
    make png        render page previews into build/
    make watch      rebuild on change (SRC=src/other.typ to pick a file)
    make fonts      confirm Typst sees the bundled fonts
    make clean

Requires `typst` (0.14 or newer) and `make`.
