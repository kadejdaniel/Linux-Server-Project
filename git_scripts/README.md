# 🚀 Update Git Script

Skrypt służy do ułatwienia procesu wysyłania zmian na repozytorium Git.  
Automatyzuje dodawanie plików, tworzenie commita, aktualizację zdalnego repozytorium i wysyłanie zmian na główną gałąź (`main`).

---

## 🔎 Opis działania

### 1. Sprawdzenie argumentu
```bash
if [ -z "$1" ]; then
    echo "Użycie skryptu wygląda następująco: ./updategit.sh \"wiadomość commita\" "
    exit 1
fi
```
-z "$1" – sprawdza, czy pierwszy argument (wiadomość commita) jest pusty

Jeśli nie podano wiadomości, skrypt wyświetla instrukcję użycia i kończy działanie

```bash
git add.
```
Dodaje wszystkie zmienione i nowe pliki

```bash
git commit -m "$1"
```
Tworzy commit z wiadomością podaną jako argument skryptu
```bash
git pull --rebase origin main
```
Pobiera najnowsze zmiany z galezi main z repo 
oraz naklada lokalne commity na górę pobranych zmian

```bash
git push origin main
```
Wysyła lokalne zmiany do gałęzi main w repozytorium zdalnym


## 📜 Skrypt

```bash
#!/bin/bash

if [ -z "$1" ]; then
    echo "Użycie skryptu wygląda następująco: ./updategit.sh \"wiadomość commita\" "
    exit 1
fi

git add .
git commit -m "$1"
git pull --rebase origin main
git push origin main

```
### ▶️ Przykład użycia
``` bash
./updategit.sh "tresc commita"
```
