#!/bin/bash
FNFILE="/sys/module/hid_apple/parameters/fnmode"
if [[ -f $FNFILE ]]; then
	sudo sh -c "echo "2" > /sys/module/hid_apple/parameters/fnmode"
	update-initramfs -u -k all
fi

