set -vx
NAME=Diplomarbeit
DATE=$(date +%Y%m%d)
git tag -fa $NAME-$DATE -m "created $NAME-$DATE.zip"
git archive HEAD --prefix $NAME-$DATE/ -o $NAME-$DATE.zip
unzip -lv $NAME-$DATE.zip
