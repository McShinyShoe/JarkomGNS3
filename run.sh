#!/bin/bash
print() {
    echo -e "\033[0;33m"$@"\033[0m"
}

read -p "Choose which module do u want to start
1) Modul GNS
Modul: " OPT

HOSTNAME=$(hostname)

case $OPT in
    1)
        MODUL=ModulGNS
        ;;
esac

print "Configuring" $MODUL "for node" $HOSTNAME

bash -c "$(curl -fs https://raw.githubusercontent.com/McShinyShoe/JarkomGNS3/master/$MODUL/$HOSTNAME.sh)"