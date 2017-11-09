# alfa_AWUS1900_adapter

![Alfa Driver Script](https://raw.githubusercontent.com/tpxSecurity/alfa_AWUS1900_adapter/master/ALFA_drivers.png)


Instalador de Drive para la antena usb AWUS1900, bajo VMware en Kali Linux, que nos ha dado dolores de cabeza :shit: en el laboratorio con @gearcapitan .

*VMWARE fusion 10 (USB3.0) Activo*
**4.13.0-kali1-amd64** #1 SMP Debian 4.13.10-1kali1 (2017-11-03) **x86_64** GNU/Linux


Este script se realizo para automizar la instalación de los drives RTL8812AU/21AU y RTL8814AU, de nuestra antena alfa AWUS1900.

Cualquier comentario o contribuciòn es bienvenida 🚀


# Script mon0.sh

Este script sirve para automatizar el modo monitor de la wlan0, para ya no hacerlo manual se crea un export:

![mon0](https://raw.githubusercontent.com/tpxSecurity/alfa_AWUS1900_adapter/master/mon0.png)

```shell
# add alias mon0='./path/to/mon0.sh' in .bashrc
$ mon0 start
$ mon0 down
```

EOF!

_HappyHacking_

