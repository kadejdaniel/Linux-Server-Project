skrypt polega na zapisywaniu jednego foldera glownego, do foldera o nazwie backupDic

mamy dwie zmienne SOURCE i DEST
SOURCE="/home/daniel/mainDirectory"
DEST="/home/daniel/backupDic"

inicjalizujemy również zmienne BACKUP_NAME oraz DATE - aby mieć wszystko w latwiejszym dla nas formacie

DATE=$(date +"%Y%m%d_%H%M%S") - date +"%Y%m%d_%H%M%S" pozwala nam zapisać date backupu w formacie (rok miesiac dzien _ godzina minuta sekunda)

BACKUP_NAME="backup_$DATE.tar.gz" - tutaj mamy zmienna ktora bedzie potrzebna nam do zapisu koncowego czyli gdzie backup zostal zapisany

mkdir -p "$DEST" - warunek dzieki ktoremu powstanie folder o sciezce $DEST 

tar -czf "$DEST/$BACKUP_NAME" -C "$SOURCE" . 
tar - narzędzie do archiwizacji
c - create tworzy nowe archiwum
z - gzip, kompresuje plik
f - okresla rodzaj pliku
C - change directory czyli zmien folder na zrodlowy
"$DEST/$BACKUP_NAME" - sciezka do pliku w ktorym ma byc backup
. - pakuj zawartosc folderu a nie folder

echo "backup zapisany w $(DEST/BACKUP_NAME)"
