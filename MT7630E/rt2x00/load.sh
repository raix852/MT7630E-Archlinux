#!/bin/sh
modprobe eeprom
modprobe eeprom_93cx6
modprobe crc-ccitt
modprobe cfg80211
modprobe mac80211

insmod /usr/local/MT7630E/rt2x00lib.ko;
insmod /usr/local/MT7630E/rt2x00pci.ko;
insmod /usr/local/MT7630E/rt2x00mmio.ko;
insmod /usr/local/MT7630E/rt2800lib.ko;
insmod /usr/local/MT7630E/rt2800pci.ko;
insmod /usr/local/MT7630E/mt76xx.ko;