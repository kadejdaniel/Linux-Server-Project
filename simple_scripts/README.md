# 👤 User Creation Script

Skrypt służy do tworzenia nowego użytkownika w systemie Linux, przypisania mu katalogu domowego oraz grupy.  
Dodatkowo ustawia powłokę `/bin/bash` i wymaga ustawienia hasła.

---

## 🔎 Opis działania

### 1. Parametry wejściowe
Skrypt wymaga **3 argumentów**:
1. `username` – nazwa użytkownika  
2. `home directory` – katalog domowy użytkownika  
3. `group` – nazwa grupy  

Sprawdzenie, czy zostały podane wszystkie argumenty:
```bash
if [[ $# -ne 3 ]]; then 
    echo "1.username 2.home directory 3.group "
    exit 1
fi

```

sprawdza, czy liczba argumentów ($#) jest różna od 3 (-ne = not equal).
Jeśli warunek jest spełniony, skrypt wyświetla komunikat i kończy działanie.

### 2. Zmienne
- USERNAME – pierwszy argument (nazwa użytkownika)
- HOMEDIR – drugi argument (katalog domowy)
- GROUPNAME – trzeci argument (grupa użytkownika)

### 3. Tworzenie grupy
```bash
getent group "$GROUPNAME" > /dev/null || groupadd "$GROUPNAME"
```
getent group "$GROUPNAME" – sprawdza, czy grupa o danej nazwie istnieje
> /dev/null – ukrywa wynik polecenia
|| groupadd "$GROUPNAME" – jeśli grupa nie istnieje, zostanie utworzona

### 4. Tworzenie użytkownika
```bash
useradd -m -d "$HOMEDIR" -g "$GROUPNAME" -s /bin/bash "$USERNAME"
```
-m – automatycznie tworzy katalog domowy

-d "$HOMEDIR" – ustawia katalog domowy na podany w argumencie

-g "$GROUPNAME" – przypisuje użytkownika do wskazanej grupy

-s /bin/bash – ustawia powłokę użytkownika na /bin/bash

"$USERNAME" – nazwa nowego użytkownika

### 5. Ustawienie hasła
passwd "$USERNAME"
Polecenie prosi o podanie hasła dla nowego użytkownika


### ▶️ Przykład użycia
``` bash
./useradd.sh janek /home/janek developers
```
