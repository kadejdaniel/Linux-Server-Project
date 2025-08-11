Co planuje zrobić:
praca z gitem, aktualizowanie zmian w repozytorium
Automatyczne robienie backupów
Chce stworzyć użytkowników i zalogować się do mojego serwera z innego komputera
Monitoring procesów, ale nie wiem po co
zrobienie jakis prostych skryptow ktore pomoga w automatyzacji


Pomysły na skrypty:

Skrypt do tworzenia nowego użytkownika + katalog domowy + przypisanie grupy.

Skrypt do sprawdzenia wolnego miejsca na dysku i wysłania alertu mailem/logiem.

Skrypt, który sprawdzi, czy jakiś proces działa (np. sshd) i uruchomi go, jeśli nie działa.

Skrypt instalujący podstawowe pakiety i aktualizacje (apt update && apt upgrade lub dnf/yum)

Tworzenie aliasów i zmiennych środowiskowych
Co możesz zrobić:

Tworzyć aliasy w .bashrc (alias update="sudo apt update && sudo apt upgrade")

Dodawać własne zmienne (export BACKUP_DIR=/home/backups)
