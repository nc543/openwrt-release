#!/bin/sh
#
# Copyright (C) 2007 OpenWrt.org
#
#

board_name="Mini6410 development board"
status_led="LED1"
status_led2=""
sys_mtd_part=""
s3c64xx_has_reset_button=""

s3c64xx_detect() {
	board_name=$(awk 'BEGIN{FS="[ \t]+:[ \t]"} /Hardware/ {print $2}' /proc/cpuinfo)

	case "$board_name" in
	"Mini6410"*)
		status_led="LED1"
		s3c64xx_has_reset_button="true"
		ifname=eth1
		;;
	"GEC6410"*)
		status_led="LED1"
		s3c64xx_has_reset_button="true"
		ifname=eth1
		;;
	*)
		;;
	esac
}

s3c64xx_detect