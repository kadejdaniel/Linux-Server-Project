#!/bin/bash
echo " " >> /tmp/daily-report.txt
echo "Daniel Kadej" >> /tmp/daily-report.txt
echo " " >> /tmp/daily-report.txt
echo "Codzienny raport systemu, data: $(date) !" >> /tmp/daily-report.txt
echo "Hostname: $(hostname)" >> /tmp/daily-report.txt
echo " " >> /tmp/daily-report.txt
echo "Informacje o systemie" >> /tmp/daily-report.txt 
uname -a >> /tmp/daily-report.txt
echo "DISK USAGE - sprawdzenie miejsca na dysku:" >> /tmp/daily-report.txt
df -h >> /tmp/daily-report.txt
echo " " >> /tmp/daily-report.txt

echo "MEMORY USAGE - sprawdzenie zuzycie pamieci:" >> /tmp/daily-report.txt
free -h >> /tmp/daily-report.txt
echo " " >> /tmp/daily-report.txt

echo "SYSTEM LOAD - obiciazenie systemu: " >> /tmp/daily-report.txt
echo "Czas pracy: $(uptime) " >> /tmp/daily-report.txt
echo " " >> /tmp/daily-report.txt
echo "Sprawdzenie najwazniejszych uslug: " >> /tmp/daily-report.txt
echo "SERVICE STATUS" >> /tmp/daily-report.txt
#systemctl status sshd | head -3 >> /tmp/daily-report.txt
#systemctl status nginx | head -3 >> /tmp/daily-report.txt
#systemctl status postgresql | head -3 >> /tmp/daily-report.txt
echo " " >> /tmp/daily-report.txt

mail -s "Daily report - $(hostname) - $(date +%Y-%m-%d)" 77daniel.kontakt@gmail.com < /tmp/daily-report.txt

cat /tmp/daily-report.txt

rm /tmp/daily-report.txt

 
