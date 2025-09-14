# 🗂️ Backup Script

Skrypt służy do wykonywania kopii zapasowej jednego katalogu głównego i zapisywania jej w folderze o nazwie **backupDic**.  
Kopia zapisywana jest jako plik `.tar.gz` z dopisaną datą i godziną utworzenia.

---

## 📜 Skrypt

```bash
#!/bin/bash

SOURCE="/home/daniel/mainDirectory"
DEST="/home/daniel/backupDic"

DATE=$(date +"%Y%m%d_%H%M%S")
BACKUP_NAME="backup_$DATE.tar.gz"

mkdir -p "$DEST"

tar -czf "$DEST/$BACKUP_NAME" -C "$SOURCE" .

echo "backup zapisany w: $DEST/$BACKUP_NAME"

## 🔎 Opis działania

1. **Zmienne główne**
   - `SOURCE="/home/daniel/mainDirectory"` – katalog, którego zawartość zostanie zarchiwizowana  
   - `DEST="/home/daniel/backupDic"` – katalog, w którym zapisane będą pliki backupu  

2. **Zmienne pomocnicze**
   - `DATE=$(date +"%Y%m%d_%H%M%S")` – pobiera aktualną datę i godzinę w formacie `RRRRMMDD_GGMMSS` (np. `20250914_142312`)  
   - `BACKUP_NAME="backup_$DATE.tar.gz"` – ustawia nazwę pliku wynikowego backupu  

3. **Tworzenie katalogu docelowego**
   - `mkdir -p "$DEST"` – jeśli katalog docelowy nie istnieje, zostanie automatycznie utworzony  

4. **Tworzenie archiwum**
   ```bash
   tar -czf "$DEST/$BACKUP_NAME" -C "$SOURCE" .
