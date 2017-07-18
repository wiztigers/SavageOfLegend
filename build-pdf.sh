#!/bin/bash

exportdir=$1

echo "Generating PDF ..."
cd ${exportdir}
xvfb-run --server-args="-screen 0, 1024x768x24" wkhtmltopdf https://wiztigers.github.io/SavageOfLegend SavageOfLegend.pdf
cd -

