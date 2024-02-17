#!/bin/bash

/usr/bin/ssh -y -y -i ~/.ssh/id_rsa root@192.168.1.88 'killall majestic ; sleep 1 ; rmmod sensor_imx415_mipi ; insmod /lib/modules/4.9.84/sigmastar/sensor/sensor_imx415_mipi.ko chmap=1 ; majestic '

#/usr/bin/ssh -T -y -y -i ~/.ssh/id_rsa root@192.168.1.88 "killall majestic \ 
#rmmod sensor_imx415_mipi \ 
#insmod /lib/modules/4.9.84/sigmastar/sensor/sensor_imx415_mipi.ko chmap=1 \ 
#majestic "

