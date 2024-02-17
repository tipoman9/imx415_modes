# Higher FPS imx415 sensor driver for Sigmastar SoCs.
Sensor modes tweaked:

### 3840 ×2160 full sensor scan 12bit colour mode boosted to 35fps
set majestic to 1920x1080 fps: 30 to get 35fps

### 1920x1080 cropped, max 60fps , zoom 2x, 12bit colour 
 set majestic to 1920x1080 fps: 60 to get 60fps cropped mode, sensor reg setup ported from @milos

### 1920x1080 binning at 60fps with decent sharpness, 12bit colour 
set majestic to 1920x1080 fps: 90 to get binning mode at 60fps


#Copy
cp sensor_imx415_mipi.c /home/home/src/ssc338/openipc-firmware/output/build/sigmastar-osdrv-sensors/sigmastar/sources/infinity6e/sensor

#This will rebuild it: 
make -C /home/home/src/ssc338/openipc-firmware/output/ sigmastar-osdrv-sensors-rebuild


#copy driver to device: 
scp /home/home/src/ssc338/openipc-firmware/output/build/sigmastar-osdrv-sensors/sigmastar/sources/infinity6e/sensor/sensor_imx415_mipi.ko root@192.168.1.88:/lib/modules/4.9.84/sigmastar/sensor/sensor_imx415_mipi.ko

# on the cam to reload
rmmod sensor_imx415_mipi
insmod /lib/modules/4.9.84/sigmastar/sensor/sensor_imx415_mipi.ko chmap=1

rmmod sensor_imx415_mipi
insmod /root/sensor_imx415_mipi.ko chmap=1




# quick compile
```
find /home/home/src/ssc338/openipc-firmware/output/build/sigmastar-osdrv-sensors -type f -name "*.mod.*" -delete
PATH="/home/home/src/ssc338/openipc-firmware/output/per-package/sigmastar-osdrv-sensors/host/bin:/home/home/src/ssc338/openipc-firmware/output/per-package/sigmastar-osdrv-sensors/host/sbin:/home/home/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:/snap/bin" PKG_CONFIG="/home/home/src/ssc338/openipc-firmware/output/per-package/sigmastar-osdrv-sensors/host/bin/pkg-config" PKG_CONFIG_SYSROOT_DIR="/" PKG_CONFIG_ALLOW_SYSTEM_CFLAGS=1 PKG_CONFIG_ALLOW_SYSTEM_LIBS=1 PKG_CONFIG_LIBDIR="/home/home/src/ssc338/openipc-firmware/output/per-package/sigmastar-osdrv-sensors/host/lib/pkgconfig:/home/home/src/ssc338/openipc-firmware/output/per-package/sigmastar-osdrv-sensors/host/share/pkgconfig" BR_BINARIES_DIR=/home/home/src/ssc338/openipc-firmware/output/images KCFLAGS=-Wno-attribute-alias /usr/bin/make -j9 -C /home/home/src/ssc338/openipc-firmware/output/build/linux-custom HOSTCC="/home/home/src/ssc338/openipc-firmware/output/per-package/sigmastar-osdrv-sensors/host/bin/ccache /usr/bin/gcc -O2 -isystem /home/home/src/ssc338/openipc-firmware/output/per-package/sigmastar-osdrv-sensors/host/include -L/home/home/src/ssc338/openipc-firmware/output/per-package/sigmastar-osdrv-sensors/host/lib -Wl,-rpath,/home/home/src/ssc338/openipc-firmware/output/per-package/sigmastar-osdrv-sensors/host/lib" ARCH=arm INSTALL_MOD_PATH=/home/home/src/ssc338/openipc-firmware/output/per-package/sigmastar-osdrv-sensors/target CROSS_COMPILE="/home/home/src/ssc338/openipc-firmware/output/per-package/sigmastar-osdrv-sensors/host/bin/arm-openipc-linux-gnueabihf-" WERROR=0 REGENERATE_PARSERS=1 DEPMOD=/home/home/src/ssc338/openipc-firmware/output/per-package/sigmastar-osdrv-sensors/host/sbin/depmod INSTALL_MOD_STRIP=1 SENSOR_VERSION=ssc338q-infinity6e INSTALL_MOD_DIR=sigmastar KSRC=/home/home/src/ssc338/openipc-firmware/output/build/linux-custom PWD=/home/home/src/ssc338/openipc-firmware/output/build/sigmastar-osdrv-sensors/sigmastar/sources/infinity6e M=/home/home/src/ssc338/openipc-firmware/output/build/sigmastar-osdrv-sensors/sigmastar/sources/infinity6e modules
scp /home/home/src/ssc338/openipc-firmware/output/build/sigmastar-osdrv-sensors/sigmastar/sources/infinity6e/sensor/sensor_imx415_mipi.ko root@192.168.1.88:/lib/modules/4.9.84/sigmastar/sensor/sensor_imx415_mipi.ko
``````
