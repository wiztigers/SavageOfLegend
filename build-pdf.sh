#!/bin/bash

echo "Wait 30s for current version to show up ..."
sleep 30s
echo "Generating PDF ..."
xvfb-run --server-args="-screen 0, 1024x768x24" wkhtmltopdf https://wiztigers.github.io/SavageOfLegend SavageOfLegend.pdf

