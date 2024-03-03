
Kapitel aus der anderen Datei
=============================

Dieses Kapitel wurde als *diplomarbeit2.md* geschrieben und dann
mit *pandoc* in \TeX\ umgewandelt.

```bash
pandoc --listings -s diplomarbeit2.md -o diplomarbeit2.tex
```

Wie man sieht ist das ganz einfach, sogar Listings sind möglich. Weitere
Optionen sind möglich bzw. sinnvoll -- siehe Kapitel \ref{skripts},
Seite \pageref{skripts}. Man beachte die von Pandoc automatisch generierten
Label für Querverweise.

Achtung:
: diese Kapitel enthält einige URLs direkt im Text. In einer Diplomarbeit sollte
das **immer** über das Quellenverzeichnis gemacht werden.


Vorschlag zur Durchführung:

* ein Ordner mit den Pandoc-Dateien
* ein Skript/Batch-Datei erzeugt daraus die Latex-Dateien
   * in einem neuen Ordner -- das erhöht die Übersichtlichkeit
* die Latex-Dateien werden dann in das Hauptdokument eingebunden

Und nun zu einem Bild. Floating Elemente können auch auf der nächsten Seite sein,
ein Verweis auf das Bild ist deshalb sinnvoll: siehe Bild \ref{Bild1} oder siehe \abb{Bild1}.


![Der Text steht unterhalb\label{Bild1}](HTL3RLogo.png)

Man kann auch die Breite aber auch angeben.

![Das kleinere Bild](HTL3RLogo.png){width=12cm}

Oder ganz klein (Bild \ref{Bild3}).

![Das ganz kleine Bild\label{Bild3}](HTL3RLogo.png){width=2cm}

Auch Listen sind kein Problem, wichtig sind nur Leerzeilen zwischen den Listenpunkten.
Hier sieht man eine einfache Aufzählung.

*  wichtig
*  auch ganz lange Texte können bei Listen
    geschrieben werden.

    Sogar mehrere Absätze sind möglich.

* Ende der Liste.

Welches Zeichen am Anfang der Liste steht ist dabei leicht einzustellen, im *pandoc* Manual gibt es nähere Infos:

1.  eins
2.  zwei

    i.  zwei eins -- Mindestens 4 Zeichen eingerückt
    i.  zwei zwei

1.  drei. *Pandoc* zählt richtig, das Zeichen am Anfang der Zeile ist nur ein Muster!

Mit den richtigen Optionen werden URLs automatisch richtig dargestellt und sind im fertigen Pdf auch
*klickbar*: http://pandoc.org/README.html


## Kleine Erinnerungen:

* bei Abkürzungen wie "z.B.", "usw.", "etc.", "..." bitte `\zB`, `\usw`, `\etc`, `\dots` verwenden. (siehe `text/Allgemein/0_latex_shortcuts.tex`)
* Referenzieren: `\ref{LABEL-NAME}`, `\kap{LABEL-NAME}`, `\siehe{LABEL-NAME}` (z.B. `\siehe{ziele}`)
* Quellenangaben:
    1. in `diplomarbeit.bib` einfügen
    2. mit `\cite{NAME}` nach dem Paragraphen verwenden - **sonst scheint die Quelle im Literaturverzeichnis nicht auf!**
* Bindestriche beachten, Faustregel:
    1. Wort-verbindend: `-` (z.B. `IP-Adresse` -> IP-Adresse)
    2. "Gedankenstrich": `--`
    3. Bis-Strich: `--` (z.B. `0--9` → 0–9)


## Optional

Glossar und Abkürzungsverzeichnis: (Auch hier gilt: **Wenn ein Eintrag nicht verwendet wird, scheint er nicht auf**)

Makros sind in `text/00_Glossar.tex` definiert.

1. Abkürzungen **ohne Glossareintrag**
    * `\ac{TAG}` (**ac**ronym): **Bevorzugte Verwendung**, Automatisch erstes mal im Text `full`, sonst `short`
    * `\acs{TAG}` (**ac**ronym **s**hort): gezwungene Kurzform
    * `\acl{TAG}` (**ac**ronym **l**ong): gezwungene Langform
    * `\acf{TAG}` (**ac**ronym **f**ull): gezwungene Vollform, Langform + Kurzform (z.B. `Internet Protocol (IP)`)
    * Bei allen Varianten kann noch
        * Der erste Buchstabe großgeschrieben werden: z.B. bei Satzanfang
        * Ein **p** (**p**lural) angehängt werden um den Plural zu verwenden
2. Abkürzungen **mit Glossareintrag**
    * Genauso wie oben, nur mit `gl` am Anfang. Z.B. `\glac{TAG}`, `\Glacp{TAG}`, `\glacs{TAG}`
3. **Nur Glossareintrag**
    * `\gl{TAG}` - Nichts spektakuläres
4. Bitte jeweils in `text/Allgemein/0_Glossar.tex` eintragen. Die bisherigen Einträge sollten selbsterklärend sein.
5. Bei Überschriften **nie** `\ac` o.ä. verwenden - **immer Ausgeschrieben!**


Beispiel: man braucht \ac{ACL} bei \acl{NGFW}, nochmals \ac{ACL}. Verwende \gl{Python} und das \gl{OSI-Modell}.


