#!/sbin/ash

OUTFD=/proc/self/fd/$1;

ui_print() {
  echo "ui_print $1" > "$OUTFD";
  echo "ui_print" > "$OUTFD";
}

symlink() {
  links=$(echo $* | awk '{ print substr($0, index($0,$2)) }');
  ln -s $1 $links;
}

ui_print "Symlinking...";
    symlink app_process32 /system/bin/app_process
    symlink dalvikvm32 /system/bin/dalvikvm
    symlink /data/misc/audio/mbhc.bin /system/etc/firmware/wcd9310/wcd9310_mbhc.bin
    symlink /data/misc/audio/wcd9310_anc.bin /system/etc/firmware/wcd9310/wcd9310_anc.bin
    symlink /etc/thermald-8064ab.conf /system/etc/thermald.conf
    symlink /etc/thermal-engine-8064ab.conf /system/etc/thermal-engine.conf
    symlink /firmware/image/modem_f2.* /system/etc/firmware/modem_fw.*
    symlink /firmware/image/q6.b00 /system/etc/firmware/q6.b00
    symlink /firmware/image/q6.b01 /system/etc/firmware/q6.b01
    symlink /firmware/image/q6.b03 /system/etc/firmware/q6.b03
    symlink /firmware/image/q6.b04 /system/etc/firmware/q6.b04
    symlink /firmware/image/q6.b05 /system/etc/firmware/q6.b05
    symlink /firmware/image/q6.b06 /system/etc/firmware/q6.b06
    symlink /firmware/image/q6.mdt /system/etc/firmware/q6.mdt
    symlink /firmware/image/tzapps.b00 /system/etc/firmware/tzapps.b00
    symlink /firmware/image/tzapps.b01 /system/etc/firmware/tzapps.b01
    symlink /firmware/image/tzapps.b02 /system/etc/firmware/tzapps.b02
    symlink /firmware/image/tzapps.b03 /system/etc/firmware/tzapps.b03
    symlink /firmware/image/tzapps.mdt /system/etc/firmware/tzapps.mdt
    symlink /firmware/image/vidc.b00 /system/etc/firmware/vidc.b00
    symlink /firmware/image/vidc.b01 /system/etc/firmware/vidc.b01
    symlink /firmware/image/vidc.b02 /system/etc/firmware/vidc.b02
    symlink /firmware/image/vidc.b03 /system/etc/firmware/vidc.b03
    symlink /firmware/image/vidc.mdt /system/etc/firmware/vidc.mdt
    symlink /firmware-mdm/image/acdb.mbn /system/etc/firmware/acdb.mbn
    symlink /firmware-mdm/image/apps.mbn /system/etc/firmware/apps.mbn
    symlink /firmware-mdm/image/dsp1.mbn /system/etc/firmware/dsp1.mbn
    symlink /firmware-mdm/image/dsp2.mbn /system/etc/firmware/dsp2.mbn
    symlink /firmware-mdm/image/dsp3.mbn /system/etc/firmware/dsp3.mbn
    symlink /firmware-mdm/image/efs1.mbn /system/etc/firmware/efs1.mbn
    symlink /firmware-mdm/image/efs2.mbn /system/etc/firmware/efs2.mbn
    symlink /firmware-mdm/image/efs3.mbn /system/etc/firmware/efs3.mbn
    symlink /firmware-mdm/image/mdm_acdb.img /system/etc/firmware/mdm_acdb.img
    symlink /firmware-mdm/image/rpm.mbn /system/etc/firmware/rpm.mbn
    symlink /firmware-mdm/image/sbl1.mbn /system/etc/firmware/sbl1.mbn
    symlink /firmware-mdm/image/sbl2.mbn /system/etc/firmware/sbl2.mbn
    symlink libGLESv2.so /system/lib/libGLESv3.so
    symlink Roboto-Bold.ttf /system/fonts/DroidSans-Bold.ttf
    symlink Roboto-Regular.ttf /system/fonts/DroidSans.ttf
    symlink /system/bin/busybox /system/bin/[
    symlink /system/bin/busybox /system/bin/[[
    symlink /system/bin/busybox /system/bin/ash
    symlink /system/bin/busybox /system/bin/awk
    symlink /system/bin/busybox /system/bin/base64
    symlink /system/bin/busybox /system/bin/basename
    symlink /system/bin/busybox /system/bin/bunzip2
    symlink /system/bin/busybox /system/bin/bzip2
    symlink /system/bin/busybox /system/bin/cal
    symlink /system/bin/busybox /system/bin/chat
    symlink /system/bin/busybox /system/bin/chattr
    symlink /system/bin/busybox /system/bin/chgrp
    symlink /system/bin/busybox /system/bin/chroot
    symlink /system/bin/busybox /system/bin/chrt
    symlink /system/bin/busybox /system/bin/cksum
    symlink /system/bin/busybox /system/bin/comm
    symlink /system/bin/busybox /system/bin/crond
    symlink /system/bin/busybox /system/bin/crontab
    symlink /system/bin/busybox /system/bin/cut
    symlink /system/bin/busybox /system/bin/depmod
    symlink /system/bin/busybox /system/bin/devmem
    symlink /system/bin/busybox /system/bin/diff
    symlink /system/bin/busybox /system/bin/dirname
    symlink /system/bin/busybox /system/bin/dnsd
    symlink /system/bin/busybox /system/bin/dnsdomainname
    symlink /system/bin/busybox /system/bin/dos2unix
    symlink /system/bin/busybox /system/bin/echo
    symlink /system/bin/busybox /system/bin/egrep
    symlink /system/bin/busybox /system/bin/env
    symlink /system/bin/busybox /system/bin/ether-wake
    symlink /system/bin/busybox /system/bin/expand
    symlink /system/bin/busybox /system/bin/expr
    symlink /system/bin/busybox /system/bin/fakeidentd
    symlink /system/bin/busybox /system/bin/fdflush
    symlink /system/bin/busybox /system/bin/fdformat
    symlink /system/bin/busybox /system/bin/fdisk
    symlink /system/bin/busybox /system/bin/fgrep
    symlink /system/bin/busybox /system/bin/find
    symlink /system/bin/busybox /system/bin/fold
    symlink /system/bin/busybox /system/bin/free
    symlink /system/bin/busybox /system/bin/freeramdisk
    symlink /system/bin/busybox /system/bin/fsck
    symlink /system/bin/busybox /system/bin/fsync
    symlink /system/bin/busybox /system/bin/ftpd
    symlink /system/bin/busybox /system/bin/ftpget
    symlink /system/bin/busybox /system/bin/ftpput
    symlink /system/bin/busybox /system/bin/getopt
    symlink /system/bin/busybox /system/bin/groups
    symlink /system/bin/busybox /system/bin/gunzip
    symlink /system/bin/busybox /system/bin/head
    symlink /system/bin/busybox /system/bin/hexdump
    symlink /system/bin/busybox /system/bin/hostid
    symlink /system/bin/busybox /system/bin/hostname
    symlink /system/bin/busybox /system/bin/httpd
    symlink /system/bin/busybox /system/bin/hwclock
    symlink /system/bin/busybox /system/bin/ifenslave
    symlink /system/bin/busybox /system/bin/inetd
    symlink /system/bin/busybox /system/bin/inotifyd
    symlink /system/bin/busybox /system/bin/install
    symlink /system/bin/busybox /system/bin/iostat
    symlink /system/bin/busybox /system/bin/ipaddr
    symlink /system/bin/busybox /system/bin/ipcalc
    symlink /system/bin/busybox /system/bin/iplink
    symlink /system/bin/busybox /system/bin/iproute
    symlink /system/bin/busybox /system/bin/iprule
    symlink /system/bin/busybox /system/bin/iptunnel
    symlink /system/bin/busybox /system/bin/killall
    symlink /system/bin/busybox /system/bin/killall5
    symlink /system/bin/busybox /system/bin/less
    symlink /system/bin/busybox /system/bin/logname
    symlink /system/bin/busybox /system/bin/losetup
    symlink /system/bin/busybox /system/bin/lsattr
    symlink /system/bin/busybox /system/bin/lsusb
    symlink /system/bin/busybox /system/bin/lzop
    symlink /system/bin/busybox /system/bin/lzopcat
    symlink /system/bin/busybox /system/bin/md5sum
    symlink /system/bin/busybox /system/bin/microcom
    symlink /system/bin/busybox /system/bin/mkdosfs
    symlink /system/bin/busybox /system/bin/mke2fs
    symlink /system/bin/busybox /system/bin/mkfifo
    symlink /system/bin/busybox /system/bin/mkfs.ext2
    symlink /system/bin/busybox /system/bin/mkfs.vfat
    symlink /system/bin/busybox /system/bin/modinfo
    symlink /system/bin/busybox /system/bin/modprobe
    symlink /system/bin/busybox /system/bin/more
    symlink /system/bin/busybox /system/bin/mt
    symlink /system/bin/busybox /system/bin/nameif
    symlink /system/bin/busybox /system/bin/nanddump
    symlink /system/bin/busybox /system/bin/nandwrite
    symlink /system/bin/busybox /system/bin/nc
    symlink /system/bin/busybox /system/bin/nice
    symlink /system/bin/busybox /system/bin/nmeter
    symlink /system/bin/busybox /system/bin/nslookup
    symlink /system/bin/busybox /system/bin/ntpd
    symlink /system/bin/busybox /system/bin/od
    symlink /system/bin/busybox /system/bin/patch
    symlink /system/bin/busybox /system/bin/pgrep
    symlink /system/bin/busybox /system/bin/pidof
    symlink /system/bin/busybox /system/bin/pkill
    symlink /system/bin/busybox /system/bin/pmap
    symlink /system/bin/busybox /system/bin/powertop
    symlink /system/bin/busybox /system/bin/printf
    symlink /system/bin/busybox /system/bin/pscan
    symlink /system/bin/busybox /system/bin/pwd
    symlink /system/bin/busybox /system/bin/rdate
    symlink /system/bin/busybox /system/bin/rdev
    symlink /system/bin/busybox /system/bin/readahead
    symlink /system/bin/busybox /system/bin/realpath
    symlink /system/bin/busybox /system/bin/reset
    symlink /system/bin/busybox /system/bin/rev
    symlink /system/bin/busybox /system/bin/rfkill
    symlink /system/bin/busybox /system/bin/run-parts
    symlink /system/bin/busybox /system/bin/script
    symlink /system/bin/busybox /system/bin/scriptreplay
    symlink /system/bin/busybox /system/bin/sed
    symlink /system/bin/busybox /system/bin/seq
    symlink /system/bin/busybox /system/bin/setkeycodes
    symlink /system/bin/busybox /system/bin/setlogcons
    symlink /system/bin/busybox /system/bin/setsid
    symlink /system/bin/busybox /system/bin/sha1sum
    symlink /system/bin/busybox /system/bin/sha256sum
    symlink /system/bin/busybox /system/bin/sha512sum
    symlink /system/bin/busybox /system/bin/showkey
    symlink /system/bin/busybox /system/bin/smemcap
    symlink /system/bin/busybox /system/bin/sort
    symlink /system/bin/busybox /system/bin/split
    symlink /system/bin/busybox /system/bin/stat
    symlink /system/bin/busybox /system/bin/strings
    symlink /system/bin/busybox /system/bin/stty
    symlink /system/bin/busybox /system/bin/sum
    symlink /system/bin/busybox /system/bin/sysctl
    symlink /system/bin/busybox /system/bin/tac
    symlink /system/bin/busybox /system/bin/tail
    symlink /system/bin/busybox /system/bin/tar
    symlink /system/bin/busybox /system/bin/tee
    symlink /system/bin/busybox /system/bin/telnet
    symlink /system/bin/busybox /system/bin/telnetd
    symlink /system/bin/busybox /system/bin/test
    symlink /system/bin/busybox /system/bin/tftp
    symlink /system/bin/busybox /system/bin/tftpd
    symlink /system/bin/busybox /system/bin/time
    symlink /system/bin/busybox /system/bin/timeout
    symlink /system/bin/busybox /system/bin/tr
    symlink /system/bin/busybox /system/bin/traceroute
    symlink /system/bin/busybox /system/bin/traceroute6
    symlink /system/bin/busybox /system/bin/tty
    symlink /system/bin/busybox /system/bin/ttysize
    symlink /system/bin/busybox /system/bin/tunctl
    symlink /system/bin/busybox /system/bin/uname
    symlink /system/bin/busybox /system/bin/uncompress
    symlink /system/bin/busybox /system/bin/unexpand
    symlink /system/bin/busybox /system/bin/uniq
    symlink /system/bin/busybox /system/bin/unix2dos
    symlink /system/bin/busybox /system/bin/unlzop
    symlink /system/bin/busybox /system/bin/unzip
    symlink /system/bin/busybox /system/bin/usleep
    symlink /system/bin/busybox /system/bin/uudecode
    symlink /system/bin/busybox /system/bin/uuencode
    symlink /system/bin/busybox /system/bin/vconfig
    symlink /system/bin/busybox /system/bin/vi
    symlink /system/bin/busybox /system/bin/watch
    symlink /system/bin/busybox /system/bin/wc
    symlink /system/bin/busybox /system/bin/wget
    symlink /system/bin/busybox /system/bin/which
    symlink /system/bin/busybox /system/bin/who
    symlink /system/bin/busybox /system/bin/whoami
    symlink /system/bin/busybox /system/bin/whois
    symlink /system/bin/busybox /system/bin/xargs
    symlink /system/bin/busybox /system/bin/zcat
    symlink /system/csc/XAR/csc_contents /system/csc_contents
    symlink /system/lib/libbluetooth_jni.so /system/app/Bluetooth/lib/arm/libbluetooth_jni.so
    symlink /system/lib/libdefcontainer_jni.so /system/priv-app/DefaultContainerService/lib/arm/libdefcontainer_jni.so
    symlink /system/lib/libjni_pacprocessor.so /system/app/PacProcessor/lib/arm/libjni_pacprocessor.so
    symlink /system/lib/libnfc_nci_jni.so /system/app/NfcNci/lib/arm/libnfc_nci_jni.so
    symlink /system/lib/libprintspooler_jni.so /system/app/PrintSpooler/lib/arm/libprintspooler_jni.so  
    symlink /system/lib/libbypass.so /system/priv-app/OTAUpdates/lib/arm/libbypass.so
    symlink /system/lib/libDivxDrm.so /system/lib/libdivxdrm.so
    symlink toolbox /system/bin/cat
    symlink toolbox /system/bin/chcon
    symlink toolbox /system/bin/chmod
    symlink toolbox /system/bin/chown
    symlink toolbox /system/bin/clear
    symlink toolbox /system/bin/cmp
    symlink toolbox /system/bin/cp
    symlink toolbox /system/bin/date
    symlink toolbox /system/bin/dd
    symlink toolbox /system/bin/df
    symlink toolbox /system/bin/dmesg
    symlink toolbox /system/bin/du
    symlink toolbox /system/bin/getenforce
    symlink toolbox /system/bin/getevent
    symlink toolbox /system/bin/getprop
    symlink toolbox /system/bin/getsebool
    symlink toolbox /system/bin/grep
    symlink toolbox /system/bin/hd
    symlink toolbox /system/bin/id
    symlink toolbox /system/bin/ifconfig
    symlink toolbox /system/bin/iftop
    symlink toolbox /system/bin/insmod
    symlink toolbox /system/bin/ioctl
    symlink toolbox /system/bin/ionice
    symlink toolbox /system/bin/kill
    symlink toolbox /system/bin/ln
    symlink toolbox /system/bin/load_policy
    symlink toolbox /system/bin/log
    symlink toolbox /system/bin/ls
    symlink toolbox /system/bin/lsmod
    symlink toolbox /system/bin/lsof
    symlink toolbox /system/bin/md5
    symlink toolbox /system/bin/mkdir
    symlink toolbox /system/bin/mknod
    symlink toolbox /system/bin/mkswap
    symlink toolbox /system/bin/mount
    symlink toolbox /system/bin/mv
    symlink toolbox /system/bin/nandread
    symlink toolbox /system/bin/netstat
    symlink toolbox /system/bin/newfs_msdos
    symlink toolbox /system/bin/nohup
    symlink toolbox /system/bin/notify
    symlink toolbox /system/bin/printenv
    symlink toolbox /system/bin/prlimit
    symlink toolbox /system/bin/ps
    symlink toolbox /system/bin/readlink
    symlink toolbox /system/bin/renice
    symlink toolbox /system/bin/restorecon
    symlink toolbox /system/bin/rm
    symlink toolbox /system/bin/rmdir
    symlink toolbox /system/bin/rmmod
    symlink toolbox /system/bin/route
    symlink toolbox /system/bin/runcon
    symlink toolbox /system/bin/schedtop
    symlink toolbox /system/bin/sendevent
    symlink toolbox /system/bin/setenforce
    symlink toolbox /system/bin/setprop
    symlink toolbox /system/bin/setsebool
    symlink toolbox /system/bin/sleep
    symlink toolbox /system/bin/smd
    symlink toolbox /system/bin/start
    symlink toolbox /system/bin/stop
    symlink toolbox /system/bin/swapoff
    symlink toolbox /system/bin/swapon
    symlink toolbox /system/bin/sync
    symlink toolbox /system/bin/top
    symlink toolbox /system/bin/touch
    symlink toolbox /system/bin/umount
    symlink toolbox /system/bin/uptime
    symlink toolbox /system/bin/vmstat
    symlink toolbox /system/bin/watchprops
    symlink toolbox /system/bin/wipe
    exit 0