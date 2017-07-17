#!/bin/bash

exportdir=$1
stylesdir="asciidoctor-stylesheet-factory"
stylename="AgeOfLegend"

cp -R sass ${stylesdir}/
cd ${stylesdir} && compass compile && cd -
cp -R fonts ${stylesdir}/stylesheets/
asciidoctor     core.adoc -a linkcss -a stylesheet=${stylesdir}/stylesheets/${stylename}.css -o ${exportdir}/index.html
