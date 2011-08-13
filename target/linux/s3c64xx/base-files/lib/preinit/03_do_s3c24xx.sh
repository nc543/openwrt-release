#!/bin/sh

do_s3c64xx() {
	. /lib/s3c64xx.sh
}

boot_hook_add preinit_main do_s3c64xx
