#!/bin/bash

exportdir=$1
stylesdir="asciidoctor-stylesheet-factory"
stylename="AgeOfLegend"

# clone asciidoctor stylesheet (we are dependent on some these)
git clone https://github.com/asciidoctor/asciidoctor-stylesheet-factory.git ${stylesdir}
# add our stylesheet to those
cp -R sass ${stylesdir}/
# compile our stylesheet (and every other stylesheet)
echo "Generating stylesheets ..."
cd ${stylesdir} && compass compile && cd -
# copy fonts to export directory
cp -R fonts ${exportdir}
# copy compiled css to export directory
cp "${stylesdir}/stylesheets/${stylename}.css" "${exportdir}/${stylename}.css"
# generate HTML
echo "Generating HTML ..."
asciidoctor     core.adoc -a linkcss -a stylesheet="${stylename}.css" -o ${exportdir}/index.html
# cleanup what was cloned
rm -rf ${stylesdir}
