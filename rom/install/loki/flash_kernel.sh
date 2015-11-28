#!/sbin/sh
#
# This leverages the loki_patch utility created by djrbliss which allows us
# to bypass the bootloader checks on jfltevzw and jflteatt
# See here for more information on loki: https://github.com/djrbliss/loki
#
#
# Run loki patch on boot.img for locked bootloaders, found in loki_bootloaders
#

export C=/tmp/install/loki_tmpdir

OUTFD=/proc/self/fd/1;

ui_print() {
  echo "ui_print $1" > "$OUTFD";
  echo "ui_print" > "$OUTFD";
}

egrep -q -f /tmp/install/loki_bootloaders /proc/cmdline
if [ $? -eq 0 ];then
  ui_print "Loki detected for patch and flash"
  mkdir -p $C
  dd if=/dev/block/platform/msm_sdcc.1/by-name/aboot of=$C/aboot.img
  /tmp/install/loki_patch boot $C/aboot.img /tmp/install/boot.img $C/boot.lok || exit 1
  /tmp/install/loki_flash boot $C/boot.lok || exit 1
  rm -rf $C
  exit 0
fi


ui_print "Unlocked bootloader version detected."
ui_print "Flashing normally."
dd if=/tmp/install/boot.img of=/dev/block/platform/msm_sdcc.1/by-name/boot || exit 1
exit 0
