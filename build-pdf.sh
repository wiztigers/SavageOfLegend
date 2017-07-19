#!/bin/bash

exportdir=$1
projectname=$2

# we have to wait 'a few seconds' for current version of gh-pages to show up ...
# let's hope the time to wget is sufficient !

# get the latest version of wkhtmltopdf and untar it
wget https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.4/wkhtmltox-0.12.4_linux-generic-amd64.tar.xz
tar xf wkhtmltox-0.12.4_linux-generic-amd64.tar.xz

echo "Generating PDF ..."
./wkhtmltox/bin/wkhtmltopdf --enable-internal-links --enable-external-links https://wiztigers.github.io/${projectname}/ ${exportdir}/${projectname}.pdf

