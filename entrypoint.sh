#!/bin/bash -l
set -e

# Store used R version in use
RVERSION=$(Rscript -e "cat(as.character(getRversion()))")
echo "RVERSION=$RVERSION" >> $GITHUB_OUTPUT

Rscript -e "rodocs::build_site('$1', '$2', '$3')"
echo "Action complete!"
