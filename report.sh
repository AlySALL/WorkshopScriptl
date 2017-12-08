#!/bin/bash
printf "Outil de monitoring\n" >> report.txt
 
printf "Rapport du `date +'%d/%m/%y'` ---" >> report.txt
 
printf "Supervision Apache2\n" >> report.txt
service apache2 status | head -n 3 >> report.txt
 
printf "Espace disque utilisé\n" >> report.txt
df -h /dev/sda1 >> report.txt

