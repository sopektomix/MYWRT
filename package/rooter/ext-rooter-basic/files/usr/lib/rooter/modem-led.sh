#!/bin/sh

log() {
	logger -t "modem-led " "$@"
}

CURRMODEM=$1
COMMD=$2

	case $COMMD in
		"0" )
			echo none > /sys/class/leds/red:signal/trigger
			echo 0 > /sys/class/leds/red:signal/brightness
			echo none > /sys/class/leds/green:signal/trigger
			echo 0 > /sys/class/leds/green:signal/brightness
			echo none > /sys/class/leds/blue:signal/trigger
			echo 0 > /sys/class/leds/blue:signal/brightness
			echo none > /sys/class/leds/red:5g/trigger
			echo 0 > /sys/class/leds/red:5g/brightness
			echo none > /sys/class/leds/green:5g/trigger
			echo 0 > /sys/class/leds/green:5g/brightness
			echo none > /sys/class/leds/blue:5g/trigger
			echo 0 > /sys/class/leds/blue:5g/brightness
			;;
		"1" )
			echo none > /sys/class/leds/red:signal/trigger
			echo 1 > /sys/class/leds/red:signal/brightness
			echo none > /sys/class/leds/green:signal/trigger
			echo 0 > /sys/class/leds/green:signal/brightness
			echo none > /sys/class/leds/blue:signal/trigger
			echo 0 > /sys/class/leds/blue:signal/brightness
			;;
		"2" )
			echo none > /sys/class/leds/red:signal/trigger
			echo 0 > /sys/class/leds/red:signal/brightness
			echo none > /sys/class/leds/green:signal/trigger
			echo 0 > /sys/class/leds/green:signal/brightness
			echo none > /sys/class/leds/blue:signal/trigger
			echo 1 > /sys/class/leds/blue:signal/brightness
			;;
		"3" )
			echo none > /sys/class/leds/red:signal/trigger
			echo 0 > /sys/class/leds/red:signal/brightness
			echo none > /sys/class/leds/green:signal/trigger
			echo 1 > /sys/class/leds/green:signal/brightness
			echo none > /sys/class/leds/blue:signal/trigger
			echo 0 > /sys/class/leds/blue:signal/brightness
			;;
		"4" )
			mode=$3
			if [ $mode = "NR5G-SA" ];then
				echo none > /sys/class/leds/red:5g/trigger
				echo 0 > /sys/class/leds/red:5g/brightness
				echo none > /sys/class/leds/green:5g/trigger
				echo 0 > /sys/class/leds/green:5g/brightness
				echo none > /sys/class/leds/blue:5g/trigger
				echo 1 > /sys/class/leds/blue:5g/brightness
			fi
			if [ $mode = "LTE" ];then
				echo none > /sys/class/leds/red:5g/trigger
				echo 0 > /sys/class/leds/red:5g/brightness
				echo none > /sys/class/leds/green:5g/trigger
				echo 1 > /sys/class/leds/green:5g/brightness
				echo none > /sys/class/leds/blue:5g/trigger
				echo 0 > /sys/class/leds/blue:5g/brightness
			fi
			if [ $mode = "LTE/NR" ];then
				echo none > /sys/class/leds/red:5g/trigger
				echo 0 > /sys/class/leds/red:5g/brightness
				echo none > /sys/class/leds/green:5g/trigger
				echo 0 > /sys/class/leds/green:5g/brightness
				echo none > /sys/class/leds/blue:5g/trigger
				echo 1 > /sys/class/leds/blue:5g/brightness
			fi
			;;
	esac
