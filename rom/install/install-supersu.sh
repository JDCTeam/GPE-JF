#!/sbin/ash

SUPERSU_ZIP=/tmp/install/supersu/supersu.zip
OUTFD=/proc/self/fd/1;

ui_print() {
  echo "ui_print $1" > "$OUTFD";
  echo "ui_print" > "$OUTFD";
}

if [ -e "$SUPERSU_ZIP" ]; then
	ui_print "Installing SuperSU...";
	mkdir -p /tmp/supersu
	/sbin/busybox unzip "$SUPERSU_ZIP" META-INF/com/google/android/* -d /tmp/supersu
	/sbin/busybox sh /tmp/supersu/META-INF/com/google/android/update-binary dummy 1 /tmp/install/supersu/supersu.zip
else
	ui_print "SuperSU not found...";
fi