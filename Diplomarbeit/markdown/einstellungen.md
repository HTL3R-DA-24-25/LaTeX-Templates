# Was man einstellen kann

Die Vorlage sollte ohne Anpassungen verwendet werden.
Begründete Abweichungen sind bitte mit dem Betreuer abzuklären.

Einige *Dinge* kann man bei der Diplomarbeit auch noch anpassen. Einiges ist sogar
in der .tex-Datei schon vorgesehen -- bitte den Anfang des Source-Codes
aufmerksam lesen.


## Inhalt/Kapitel

Einige Ideen zur Gliederung der Arbeit gibt es unter
http://www.diplomarbeiten-bbs.at/
^[http://www.diplomarbeiten-bbs.at/erstellung/durchf%C3%BChrung/gliederung-der-diplomarbeit-und-formale-vorgaben-0]


## Einseitig/zweiseitig

Korrekturexemplar immer einseitig drucken. Das fertige Buch ist dann beidseitig zu drucken.

Achtung: bei einseitigen Ausdruck der Diplomarbeit sind einige Dinge anzupassen
(Überschriften, Vorlage für Kapitel, Bundsteg \usw) -- beim Korrekturexemplar sind diese Änderungen nicht notwendig,
es kommt dadurch aber \zB zu leeren Seiten.

## Farben

* Deckblatt mit Logo immer in Farbe
* Farbausdrucke sind viel teurer -- Notwendigkeit prüfen und mit dem Betreuer abklären.
* am aufwändigsten: ein paar Seiten in Farbe
* falls Schwarz-Weiß: kein Logo beim laufenden Text

## Autor

Bei der Diplomarbeit muss jeder Text einem Autor zuzuordnen sein. Man kann das wie in
der Vorlage in der Fußzeile machen. Alternativ kann man auch eine Übersicht als Anhang
eingefügt werden --  bitte mit dem Betreuer abklären.

## Absätze

### Einzug

Den Beginn eines neuen Absatzes wird durch einen Abstand zwischen den Absätzen gekennzeichnet.

Alternative: durch Einrücken kennzeichnen.
Diese Einstellung wird in der Vorlage bzw. im Header gemacht:

```latex
%\parindent0pt % auskommentieren, wenn keine Einrueckung der
               % ersten Absatzzeile gewuenscht
%\parskip1.5ex plus0.5ex minus0.5ex % flexibler Absatzabstand
```

Die Option `parskip=half` bei `documentclass` ersetzt bereits den Absatzeinzug durch einen Absatzabstand.

oder http://ctan.org/pkg/parskip

```latex
\usepackage[parfill]{parskip}
```

### Latex -- noch schöner

http://www.khirevich.com/latex/microtype/

## Aufzählungen

Man kann die Einrückung und vieles mehr anpassen:

```latex
\usepackage{enumitem}
\setlist[1]{labelindent=\parindent}
\setlist{align=left}
\setlist[itemize]{leftmargin=*}

% oder:
\setlength\partopsep{0.5ex}
```

## Warnungen

```latex
\sloppy  % etwas laxere Abstandskontrolle (weniger Fehlermeldungen)
```

## Listings


Sonderzeichen:

http://en.wikibooks.org/wiki/LaTeX/Source_Code_Listings#Encoding_issue

Anpassen:

http://stackoverflow.com/questions/1965702/how-to-mark-line-breaking-of-long-lines

http://www.bollchen.de/blog/2011/04/good-looking-line-breaks-with-the-listings-package/


## Zitierstil:



* alphadin - mit Text+Jahr [Hor99]


## Glossar

* https://ctan.org/pkg/glossaries/
* http://texwelt.de/wissen/fragen/10496/glossaries-alle-symbole-nur-verwendete-abkurzungen-anzeigen
* http://en.wikibooks.org/wiki/LaTeX/Glossary für die verschiedenen Formen


## Ausdruck zu weit oben/unten

Man kann das Layout anpassen: Position auf Seite -- bei einigen Druckern (HP ?) notwendig.

```latex
\voffset10mm
```

## URLs

Man kann/sollte das `hyperref`-Paket anpassen, die bunten Links kann man ausschalten.

```latex
\hypersetup{breaklinks=true,
bookmarks=true,
pdfauthor={Mein Name},% <------------------- anpassen!
pdftitle={Die Diplomarbeit},% <------------------- anpassen!
colorlinks=true,
citecolor=blue,
urlcolor=blue,
linkcolor=magenta,
pdfborder={0 0 0}}

\urlstyle{same}
```

## Pandoc-Caption mit Verweis

siehe  https://github.com/chiakaivalya/thesis-markdown-pandoc

This is how you insert figures using markdown. Also how to insert citations copied
over from your bibliography manager (I specifically used Pandoc Citations in Papers).

```
![Figure from Walczak, 2010[@Walczak:2010uk].
    \label{mitosis} ](figures/mitosis_Walczak.pdf)
```

## Seitennummern

http://www.golatex.de/wiki/%5Cfrontmatter

```latex
\frontmatter % switches to roman numbering
\mainmatter
\backmatter
```

## Vorlagen

### TU Wien -- Informatik

* https://gitlab.com/ThomasAUZINGER/vutinfth
    * super Vorlage und Build-Skripts (auch für Windows)
* http://www.informatik.tuwien.ac.at/dekanat/abschluss-master
* http://www.informatik.tuwien.ac.at/fakultaet/informatik-code-of-ethics.pdf
* Alte Vorlage
    * http://ieg.ifs.tuwien.ac.at/~aigner/download/tuwien.sty (dead?)
    * von dort sind die Abkürzungen kopiert

### Andere

* https://www.ctan.org/tex-archive/macros/latex/contrib/etdipa?lang=de
* https://github.com/Digital-Media/HagenbergThesis
    * enthält viele Tipps
* https://github.com/philipmichel/vorlage-diplomarbeit-latex/blob/master/diplom.pdf

# Tipps zur Diplomarbeit -- Checkliste

## Source

* mit Java/Python/*-doc
* sinnvolle Namen
* Codierrichtlinien eingehalten
    * definiert?
    * welche?


## Buch

* einheitliche Formatierung
    * Formatvorlage eingehalten

* Layout
    * kein halb-leeren Seiten
    * wichtig bei Bildern und Listings

* Grammatik + Rechtschreibung

* Irgendwie sollte man ein (einheitliches) Bild vom Leser haben:\newline
  Negativbeispiel:

    * einerseits ein Dummy dem man `mdir` erklären muss
    * andererseits kann er Python-Pakete installieren

>> "Ich habe den gegenwärtigen Brief aus keiner andern Ursach so lang gemacht, als weil ich nicht Zeit hatte, ihn kürzer zu machen."
>>  Blaise Pascal, 16. Brief, 4. Dezember 1656, Übersetzung: 1792, S. 263

### Umfang

* ohne Bilder aus dem Web bzw. Füllbilder

## Formulierungen

NICHT:

* romanartige Erzählungen
* seitenlange Installationsanweisungen statt Link auf Anleitung im Web

## Listings

* wenig
* ohne Kommentare
    * dafür mit Erklärung
    * mit Verweis auf File
* UML Diagramme als Ergänzung

* Anordung: Floating

## Bilder

* Floating
* Quellenangabe

## Versionsverwaltung

* je unabhängigen Teilprojekt
* sinnvolle Kommits (Nachrichten)
* regelmäßig

## Projektmanagement

* Entscheidung: Wieviel?
* NICHT unreflektierte Analysen vom Projektstart im Anhang

## Quellen

* alle Tools inkl. Versionsnummer
* alle Zitate bzw. übernommenen Meinungen
* Datenblätter \ua

### Aussagen

Alles im Buch sollte man in folgende drei Typen einteilen:

* Stand der Technik -- Quelle notwendig
* selbst gemacht -- Verweis wie und wo
* Meinung -- als eigene Meinung bzw. Einschätzung kennzeichnen




# Skripts

##  Pandoc  nach Latex

```bash
#! /bin/bash
#set -x
#set -v
set -e

PANDOCMODULES=markdown+auto_identifiers
PANDOCMODULES=${PANDOCMODULES}+definition_lists
#PANDOCMODULES=${PANDOCMODULES}+compact_definition_lists
PANDOCMODULES=${PANDOCMODULES}+fenced_code_attributes
PANDOCMODULES=${PANDOCMODULES}+autolink_bare_uris
PANDOCMODULES=${PANDOCMODULES}+simple_tables+table_captions
PANDOCMODULES=${PANDOCMODULES}+inline_notes+footnotes

PANDOCOPT="--listings-S -N -f ${PANDOCMODULES}"

mkdir -p ../kaptex/
rm -f ../kaptex/*

for f in *.md
do
   out=$(basename $f .md).tex
   echo -n $f " "
   pandoc ${PANDOCOPT} $f -o ../kaptex/$out
done
```

## Diplomarbeit bauen

Wichtig -- damit alle Seitenummern und Verweise  passen:

* erster Latex-Lauf
* `makeindex` und `bibref` aufrufen
* noch zweimal Latex

```bash
cd kapmd
./create.sh
cd ..

# mit pdflatex
pdflatex diplbuch.tex &&
makeindex -c -q diplbuch.idx &&
bibtex diplbuch
pdflatex diplbuch.tex &&
pdflatex diplbuch.tex

# Alternative
# latexmk -pdf -silent diplomarbeit.tex
```


# Tipps der Uni Hagenberg

Angepasste Kopie aus \citep{hagenberg}.

## Drucken

Vor dem Drucken der Arbeit empfiehlt es sich, einige Dinge zu beachten, um unnötigen Aufwand (und auch Kosten) zu vermeiden.


### Drucker und Papier

Die Abschlussarbeit sollte in der Endfassung unbedingt auf einem
qualitativ hochwertigen Laserdrucker ausgedruckt werden, Ausdrucke
mit Tintenstrahldruckern sind \emph{nicht} ausreichend. Auch das
verwendete Papier sollte von guter Qualität (holzfrei) und
üblicher Stärke (mind.\ $80\; {\mathrm g} / {\mathrm m}^2$) sein.
Falls *farbige* Seiten notwendig sind, sollte man diese
einzeln^[Tip: Mit *Adobe Acrobat* lassen sich sehr einfach einzelne Seiten
des Dokuments für den Farbdruck auswählen und zusammenstellen.]
auf einem Farb-Laserdrucker ausdrucken und dem Dokument beifügen.

Übrigens sollten **alle** abzugebenden Exemplare **gedruckt**
(und nicht kopiert) werden! Die Kosten für den Druck
sind heute nicht höher als die für Kopien, der
Qualitätsunterschied ist jedoch -- \va\ bei Bildern und Grafiken
-- meist deutlich.


### Druckgröße

Zunächst sollte sichergestellt werden, dass die in der fertigen PDF-Datei eingestellte
Papiergröße tatsächlich **A4** ist! Das geht \zB\ mit *Adobe Acrobat*
oder *SumatraPDF*
über `File` $\rightarrow$ `Properties`,
wo die Papiergröße des Dokuments angezeigt wird:
\begin{center}
\textbf{Richtig:} A4 = $8{,}27 \times 11{,}69$ in \bzw\ $21{,}0 \times 29{,}7$ cm.
\end{center}
Falls das nicht stimmt, ist vermutlich irgendwo im Workflow versehentlich \textbf{Letter}
als Papierformat eingestellt.

Ein häufiger und leicht zu übersehender Fehler beim Ausdrucken von
PDF-Dokumenten wird durch die versehentliche Einstellung der
Option "`Fit to page"' im Druckmenü verursacht, wobei die Seiten
meist zu klein ausgedruckt werden. Überprüfen Sie daher die Größe
des Ausdrucks anhand der eingestellten Zeilenlänge oder mithilfe
einer Messgrafik, wie am Ende dieses Dokuments gezeigt.
Sicherheitshalber sollte diese Messgrafik bis zur
Fertigstellung der Arbeit beibehalten und die entsprechende
Seite erst ganz am Schluss zu entfernt werden.
Wenn, wie häufig der Fall, einzelne Seiten getrennt in Farbe gedruckt
werden, so sollten natürlich auch diese genau auf die Einhaltung der Druckgröße
kontrolliert werden!

## Schlussbemerkungen

An dieser Stelle sollte eine Zusammenfassung der Abschlussarbeit
stehen, in der auch auf den Entstehungsprozess, persönliche
Erfahrungen, Probleme bei der Durchführung,
Verbesserungsmöglichkeiten, mögliche
Erweiterungen \usw\ eingegangen werden kann. War das Thema richtig
gewählt, was wurde konkret erreicht, welche Punkte blieben offen
und wie könnte von hier aus weitergearbeitet werden?


### Lesen und lesen lassen

Wenn die Arbeit fertig ist, sollten Sie diese zunächst selbst nochmals vollständig und sorgfältig
durchlesen, auch wenn man vielleicht das mühsam entstandene Produkt längst nicht mehr sehen möchte.
Zusätzlich ist sehr zu empfehlen, auch einer weiteren Person diese Arbeit anzutun -- man wird
erstaunt sein, wie viele Fehler man selbst überlesen hat.



### Checkliste

Abschließend noch eine kurze Liste der wichtigsten Punkte, an denen erfahrungsgemäß die häufigsten Fehler auftreten.


Diese Punkte bilden auch die Grundlage der routine\-mäßigen Formbegutachtung in Hagenberg.

* \textbf{Titelseite:} Länge des Titels (Zeilenumbrüche), Name, Studiengang, Datum.
* \textbf{Erklärung:} vollständig Unterschrift.
* \textbf{Inhaltsverzeichnis:} balancierte Struktur, Tiefe, Länge der Überschriften.
* \textbf{Kurzfassung/Abstract:} präzise Zusammenfassung, passende Länge, gleiche Inhalte und Struktur.
* \textbf{Überschriften:} Länge, Stil, Aussagekraft.
* \textbf{Typographie:} sauberes Schriftbild, keine *manuellen* Abstände zwischen Absätzen oder Einrückungen, keine überlangen Zeilen, Hervorhebungen, Schriftgröße, Platzierung von Fußnoten.
* \textbf{Interpunktion:} Binde- und Gedankenstriche richtig gesetzt, Abstände nach Punkten (\va\ nach Abkürzungen).
* \textbf{Abbildungen:} Qualität der Grafiken und Bilder, Schriftgröße und -typ in Abbildungen, Platzierung von Abbildungen und Tabellen, Captions. Sind \emph{alle} Abbildungen (und Tabellen) im Text referenziert?
* \textbf{Gleichungen/Formeln:} mathem.\ Elemente auch im Fließtext richtig gesetzt, explizite Gleichungen richtig verwendet, Verwendung von mathem.\ Symbolen.
* \textbf{Quellenangaben:} Zitate richtig referenziert, Seiten- oder Kapitelangaben.
* \textbf{Literaturverzeichnis:} mehrfach zitierte Quellen nur einmal angeführt, Art der Publikation muss in jedem Fall klar sein, konsistente Einträge, Online-Quellen (URLs) sauber angeführt.
* \textbf{Sonstiges:} ungültige Querverweise (\textbf{??}), Anhang, Papiergröße der PDF-Datei
	(A4 = $8.27 \times 11.69$ Zoll), Druckgröße und -qualität.





