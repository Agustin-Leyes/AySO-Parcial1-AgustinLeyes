#!/bin/bash
sudo fdisk /dev/sdc << EOF

n
p
1

+2500M
n
p
2

+2500M
n
p
3

+2500M
n
e
4


n
1



w

EOF

echo "mis particiones listas"
sudo fdisk -l /dev/sdc


sudo mkfs.ext3 /dev/sdc1
sudo mkfs.ext3 /dev/sdc2
sudo mkfs.ext3 /dev/sdc3
sudo mkfs.ext3 /dev/sdc5

sudo lsblk -f

sudo mkdir -p /mnt/disco/{sdc1,sdc2,sdc3,sdc5}

sudo mount /dev/sdc1 /mnt/disco/sdc1
sudo mount /dev/sdc2 /mnt/disco/sdc2
sudo mount /dev/sdc3 /mnt/disco/sdc3
sudo mount /dev/sdc5 /mnt/disco/sdc5

df -h
