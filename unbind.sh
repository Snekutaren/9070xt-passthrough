#!/usr/bin/env bash

set +x

hyprctl dispatch exit
sleep 2

echo 0000:03:00.0 > /sys/bus/pci/drivers/amdgpu/unbind
sleep 2

#echo 0000:03:00.1 > /sys/bus/pci/drivers/snd_hda_intel/unbind
#sleep 2

echo 3 > /sys/bus/pci/devices/0000:03:00.0/resource2_resize
sleep 2

#Hyprland