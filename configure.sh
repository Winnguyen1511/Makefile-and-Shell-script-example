#!/bin/bash
PS3="Choose your toolchain:"
select choice in "arm-rpi3" "x86_64"
do
	case $choice in 
	"arm-rpi3")
		echo $choice
		export PATH="$HOME/x-tools/armv8-rpi3-linux-gnueabihf/bin:$PATH"
		;;
	"x86_64")
		echo $choice
		;;
	esac
	break
done
bash

