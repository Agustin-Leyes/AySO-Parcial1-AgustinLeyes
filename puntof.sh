#!/bin/bash

echo "Esta es mi ip: " >> /home/vagrant/parcial1/Filtro_Avanzado.txt
curl -s ifconfig.me >> /home/vagrant/parcial1/Filtro_Avanzado.txt

echo "" >> /home/vagrant/parcial1/Filtro_Avanzado.txt
 
echo "Mi usuario es :" $(whoami) >> /home/vagrant/parcial1/Filtro_Avanzado.txt

echo "" >> /home/vagrant/parcial1/Filtro_Avanzado.txt

echo "El hash es :" >> /home/vagrant/parcial1/Filtro_Avanzado.txt
sudo grep "$(whoami)" /etc/shadow >> /home/vagrant/parcial1/Filtro_Avanzado.txt


cat /home/vagrant/parcial1/Filtro_Avanzado.txt
