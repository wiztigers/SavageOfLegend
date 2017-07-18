#!/bin/bash

echo "Generating PDF ..."
xvfb-run --server-args="-screen 0, 1024x768x24" wkhtmltopdf https://wiztigers.github.io/SavageOfLegend SavageOfLegend.pdf

