
rm diplomarbeit/* diplomarbeit.zip images/*

latex2html -html_version 4.0,latin1,unicode -split 0 diplomarbeit.tex
detex diplomarbeit.tex > diplomarbeit.txt
convert -verbose -density 150 -quality 100 -resize 800x -colorspace CMYK  diplomarbeit.pdf 
images/da.jpg
zip -r diplomarbeit.zip diplomarbeit.pdf diplomarbeit.tex diplomarbeit/ images/ HTL3RLogo.png

