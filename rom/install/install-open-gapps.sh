#!/sbin/ash

GAPPS_ZIP=/tmp/install/opengapps/opengapps.zip
OUTFD=/proc/self/fd/$1;

ui_print() {
  echo "ui_print $1" > "$OUTFD";
  echo "ui_print" > "$OUTFD";
}

if [ -e "$GAPPS_ZIP" ]; then
	ui_print "Installing OpenGapps...";
	ui_print "-- This will take some time";
	mkdir -p /tmp/opengapps
	/sbin/busybox unzip "$GAPPS_ZIP" META-INF/com/google/android/* -d /tmp/opengapps
	/sbin/busybox sh /tmp/opengapps/META-INF/com/google/android/update-binary dummy $1 /tmp/install/opengapps/opengapps.zip
else
	ui_print "Open Gapps not found...";
	ui_print "-- Please only use the 'Super' verison of OpenGapps from their website.";
	ui_print "-- Do not use another GApps Package as they are unsuitable for Nexus/GPE ROMs.";
fi
exit 0