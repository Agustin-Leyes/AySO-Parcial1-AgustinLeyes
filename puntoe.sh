#!/bin/bash

cat /proc/meminfo | grep "MemTotal" >> ~/parcial1/Filtro_Basico.txt

sudo dmidecode -t chassis | grep Manufacturer >> ~/parcial1/Filtro_Basico.txt

cat ~/parcial1/Filtro_Basico.txt

