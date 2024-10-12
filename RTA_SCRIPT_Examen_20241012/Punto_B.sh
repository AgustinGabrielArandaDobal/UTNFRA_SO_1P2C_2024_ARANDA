#!/bin/bash

#Creo particiones
DISCO=$(sudo fdisk -l | grep "10 GiB" | awk '{print $2}' | awk -F ':' '{print $1}')


echo "disco: $DISCO"


sudo fdisk $DISCO << EOF
n
p
1

+1G
n
p
2

+1G
n
p
3

+1G
n
e


n

+1G
n

+1G
n

+1G
n

+1G
n

+1G
n

+1G
n


p
w
EOF

