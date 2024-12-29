#!/bin/bash

# Remove any existing compressed module file
rm -f ov02c10.ko.xz

# Compress the kernel module
xz ov02c10.ko

# Create the target directory if it doesn't exist
sudo mkdir -p /usr/lib/modules/$(uname -r)/extra/intel-ipu6/drivers/media/i2c/

# Copy the compressed module to the target directory
sudo cp ov02c10.ko.xz /usr/lib/modules/$(uname -r)/extra/intel-ipu6/drivers/media/i2c/

# Run depmod to update module dependencies
sudo depmod
