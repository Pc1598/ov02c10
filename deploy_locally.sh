rm -f ov02c10.ko.xz
xz ov02c10.ko
sudo cp ov02c10.ko.xz /usr/lib/modules/$(uname -r)/extra/intel-ipu6/drivers/media/i2c/
