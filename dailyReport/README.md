skrypt polega na podaniu informacji o stanie serwera, podaje on dane o tym:
- z czyjego hosta zostal zrobiony raport
- kiedy raport zostal wykonany
- informacje o systemie
- ile jest miejsca na dysku
- sprawdza zuzycie pamieci
- czas pracy hosta
a dane te są zapisywane w folderze /tmp/daily-report.txt, faktem jest ze moglem zamiast wpisywania tej sciezki stworzyc np REPORT = /tmp/daily-report.txt i przypisywać w formacie df - h >> "$REPORT_FILE"

echo "Codzienny raport systemu, data: $(date) !" - kiedy raport zostal zrobiony
echo "Hostname: $(hostname)" - podaje informacje o hoscie

echo "Informacje o systemie" >> /tmp/daily-report.txt 
uname -a >> /tmp/daily-report.txt - podaje informacje o systemie takie jak np:

Linux – nazwa systemu (kernel name)
hostname – nazwa hosta (nazwa serwera/maszyny)
5.15.0-87-generic – wersja jądra
#97-Ubuntu SMP Fri Aug 3 14:12:07 UTC 2025 – numer kompilacji jądra + kiedy i jak zostało zbudowane
x86_64 – architektura sprzętowa
GNU/Linux – system operacyjny

echo "MEMORY USAGE - sprawdzenie zuzycie pamieci:" >> /tmp/daily-report.txt
free -h - komenda ta pozwala sprawdzic zuzycie pamieci w pc

WIZUALNE RZECZY
mail -s "Daily report - $(hostname) - $(date +%Y-%m-%d)" 77daniel.kontakt@gmail.com < /tmp/daily-report.txt - wyslanie raportu na maila 

cat /tmp/daily-report.txt - wyswietlenie danych zebranych przez skryot

rm /tmp/daily-report.txt - usuniecie raport aby zwolnic pamiec 
