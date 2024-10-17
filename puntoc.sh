#!/bin/bash
sudo groupadd grupoprogramadores
sudo groupadd grupotester
sudo groupadd grupoanalistas
sudo groupadd grupodisenadores
sudo groupadd programadores
sudo groupadd tester
sudo groupadd analistas
sudo groupadd disenadores

sudo useradd -m -s /bin/bash -g programadores -G grupoprogramadores programadores
sudo useradd -m -s /bin/bash -g tester -G grupotester tester
sudo useradd -m -s /bin/bash -g analistas -G grupoanalistas analistas
sudo useradd -m -s /bin/bash -g disenadores -G grupodisenadores disenadores 

sudo chown programadores:programadores /home/vagrant/parcial1/Examenes_Utn/Alumno1
sudo chmod 750 /home/vagrant/parcial1/Examenes_Utn/Alumno1
sudo chown tester:tester /home/vagrant/parcial1/Examenes_Utn/alumno2
sudo chmod 760 /home/vagrant/parcial1/Examenes_Utn/alumno2
sudo chown analistas:analistas /home/vagrant/parcial1/Examenes_Utn/alumno3
sudo chmod 700 /home/vagrant/parcial1/Examenes_Utn/alumno3
sudo chown disenadores:disenadores /home/vagrant/parcial1/Examenes_Utn/profesores
sudo chmod 755 /home/vagrant/parcial1/Examenes_Utn/profesores


