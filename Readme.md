


#Copy
cp sensor_imx415_mipi.c /home/home/src/ssc338/openipc-firmware/output/build/sigmastar-osdrv-sensors/sigmastar/sources/infinity6e/sensor

#This will rebuild it: 
make -C /home/home/src/ssc338/openipc-firmware/output/ sigmastar-osdrv-sensors-rebuild


#copy driver to device: 
scp /home/home/src/ssc338/openipc-firmware/output/build/sigmastar-osdrv-sensors/sigmastar/sources/infinity6e/sensor/sensor_imx415_mipi.ko root@192.168.1.88:/lib/modules/4.9.84/sigmastar/sensor/sensor_imx415_mipi.ko

#on the cam to reload
rmmod sensor_imx415_mipi
insmod /lib/modules/4.9.84/sigmastar/sensor/sensor_imx415_mipi.ko chmap=1

