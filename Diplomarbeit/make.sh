set -v
set -x
set -e


PANDOCMODULES=markdown+auto_identifiers
PANDOCMODULES=${PANDOCMODULES}+definition_lists
#PANDOCMODULES=${PANDOCMODULES}+compact_definition_lists
PANDOCMODULES=${PANDOCMODULES}+fenced_code_attributes
PANDOCMODULES=${PANDOCMODULES}+autolink_bare_uris
PANDOCMODULES=${PANDOCMODULES}+simple_tables+table_captions
PANDOCMODULES=${PANDOCMODULES}+inline_notes+footnotes+link_attributes+smart


# mit listings
#PANDOCOPT="--listings -S -N -f ${PANDOCMODULES}"
PANDOCOPT="-N -f ${PANDOCMODULES}"

cd markdown
for f in *.md
do 
 pandoc ${PANDOCOPT} $f -o $f.tex
done
cd ..



LATEX=latexmk
LATEXOPT="-pdf -silent -bibtex"
$LATEX ${LATEXOPT} diplomarbeit.tex

# clean up (remove) all nonessential files
# $LATEX -c diplomarbeit.tex


exit 0

# andere Variante
LATEX=pdflatex
LATEXOPT="--shell-escape"

$LATEX ${LATEXOPT} diplomarbeit.tex &&
makeindex -c -q diplomarbeit.idx &&
bibtex diplomarbeit
# wenn mit glossar
makeglossaries diplomarbeit
# nur ein run mit latexmk
# $LATEX ${LATEXOPT} diplomarbeit.tex &&
$LATEX ${LATEXOPT} diplomarbeit.tex

