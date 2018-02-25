#!/bin/bash

set -u
# Convert the Notebook to a Reveal.js HTML slideshow
# c.f. http://nbconvert.readthedocs.io/en/latest/usage.html#convert-revealjs
if [[ $# -eq 0  ]]; then
    jupyter nbconvert Slides.ipynb --to slides --post serve
else
    jupyter nbconvert "${1}" --to slides --post serve
fi
