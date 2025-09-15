# 📊 Daily System Report Script
Skrypt służy do generowania codziennych raportów o stanie serwera. Zbiera kluczowe informacje systemowe i zapisuje je w pliku tymczasowym, a następnie wyświetla raport w terminalu.

---

## 📖 Opis działania

### 1. Struktura raportu
Skrypt generuje raport zawierający:
- Informacje o autorze raportu
- Datę i godzinę wykonania raportu
- Nazwę hosta serwera
- Szczegółowe informacje o systemie operacyjnym
- Zajętość miejsca na dysku
- Zużycie pamięci RAM
- Obciążenie systemu i czas pracy
- Status najważniejszych usług systemowych

### 2. Zmienne
- `REPORT_FILE="/tmp/daily-report.txt"` - ścieżka do tymczasowego pliku raportu

### 3. Komendy systemowe
- `uname -a` - wyświetla szczegółowe informacje o systemie
- `df -h` - pokazuje zużycie miejsca na dyskach
- `free -h` - wyświetla informacje o zużyciu pamięci
- `uptime` - pokazuje czas pracy systemu i obciążenie
- `systemctl status` - sprawdza status usług systemowych

### 4. Proces działania
1. Tworzenie pliku tymczasowego w `/tmp/`
2. Zbieranie informacji o systemie
3. Zapisywanie danych do pliku raportu
4. Wyświetlenie raportu w terminalu
5. Usunięcie pliku tymczasowego

## 📜 Skrypt

```bash

#!/bin/bash

# Zmienna dla pliku raportu
REPORT_FILE="/tmp/daily-report.txt"

# Inicjalizacja pliku raportu
echo " " > "$REPORT_FILE"
echo "Daniel Kadej" >> "$REPORT_FILE"
echo " " >> "$REPORT_FILE"
echo "Codzienny raport systemu, data: $(date) !" >> "$REPORT_FILE"
echo "Hostname: $(hostname)" >> "$REPORT_FILE"
echo " " >> "$REPORT_FILE"

# Informacje o systemie
echo "Informacje o systemie" >> "$REPORT_FILE" 
uname -a >> "$REPORT_FILE"
echo "DISK USAGE - sprawdzenie miejsca na dysku:" >> "$REPORT_FILE"
df -h >> "$REPORT_FILE"
echo " " >> "$REPORT_FILE"

# Zużycie pamięci
echo "MEMORY USAGE - sprawdzenie zużycie pamięci:" >> "$REPORT_FILE"
free -h >> "$REPORT_FILE"
echo " " >> "$REPORT_FILE"

# Obciążenie systemu
echo "SYSTEM LOAD - obciążenie systemu: " >> "$REPORT_FILE"
echo "Czas pracy: $(uptime) " >> "$REPORT_FILE"
echo " " >> "$REPORT_FILE"

# Status usług (zakomentowane - można odkomentować gdy usługi są dostępne, niestety nie sa skonfigurowane)
echo "Sprawdzenie najważniejszych usług: " >> "$REPORT_FILE"
echo "SERVICE STATUS" >> "$REPORT_FILE"
#systemctl status sshd | head -3 >> "$REPORT_FILE"
#systemctl status nginx | head -3 >> "$REPORT_FILE"
#systemctl status postgresql | head -3 >> "$REPORT_FILE"
echo " " >> "$REPORT_FILE"

# Wyświetlenie raportu w terminalu
cat "$REPORT_FILE"

# Usunięcie pliku tymczasowego
rm "$REPORT_FILE"
```
### ▶️ Przykład użycia
``` bash
./updategit.sh 
```
