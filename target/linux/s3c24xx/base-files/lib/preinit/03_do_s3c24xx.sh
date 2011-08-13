#!/bin/sh

do_s3c24xx() {
	. /lib/s3c24xx.sh
}

boot_hook_add preinit_main do_s3c24xx
