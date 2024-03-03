
PANDOCMODULES := markdown+auto_identifiers
PANDOCMODULES := ${PANDOCMODULES}+definition_lists
#PANDOCMODULES := ${PANDOCMODULES}+compact_definition_lists
PANDOCMODULES := ${PANDOCMODULES}+fenced_code_attributes
PANDOCMODULES := ${PANDOCMODULES}+autolink_bare_uris
PANDOCMODULES := ${PANDOCMODULES}+simple_tables+table_captions
PANDOCMODULES := ${PANDOCMODULES}+inline_notes+footnotes+link_attributes
#PANDOCMODULES := ${PANDOCMODULES}+inline_notes+footnotes+link_attributes+smart

#PANDOCOPT := --listings -S -N -f ${PANDOCMODULES}  # mit listings
PANDOCOPT := -N -f ${PANDOCMODULES}


%.md.tex: %.md
	pandoc ${PANDOCOPT} $< -o $@
