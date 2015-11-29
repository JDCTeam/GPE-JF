#!/sbin/ash

OUTFD=/proc/self/fd/$1;

ui_print() {
  echo "ui_print $1" > "$OUTFD";
  echo "ui_print" > "$OUTFD";
}

set_perm() {
  files=$(echo $* | awk '{ print substr($0, index($0,$4)) }');
  for i in $files; do
    chown $1.$2 $i; chown $1:$2 $i;
    chmod $3 $i;
  done;
}

set_perm_recursive() {
  dirs=$(echo $* | awk '{ print substr($0, index($0,$5)) }');
  for i in $dirs; do
    chown -R $1.$2 $i; chown -R $1:$2 $i;
    find "$i" -type d -exec chmod $3 {} +;
    find "$i" -type f -exec chmod $4 {} +;
  done;
}

ch_con() {
  LD_LIBRARY_PATH=/system/lib /system/toolbox chcon u:object_r:$1:s0 $2;
  LD_LIBRARY_PATH=/system/lib /system/bin/toolbox chcon u:object_r:$1:s0 $2;
  chcon u:object_r:$1:s0 $2;
}

ch_con_recursive() {
  dirs=$(echo $* | awk '{ print substr($0, index($0,$3)) }');
  for i in $dirs; do
    find "$i" -type d -exec LD_LIBRARY_PATH=/system/lib /system/toolbox chcon u:object_r:$1:s0 {} +;
    find "$i" -type d -exec LD_LIBRARY_PATH=/system/lib /system/bin/toolbox chcon u:object_r:$1:s0 {} +;
    find "$i" -type d -exec chcon u:object_r:$1:s0 '{}' +;
    find "$i" -type f -exec LD_LIBRARY_PATH=/system/lib /system/toolbox chcon u:object_r:$2:s0 {} +;
    find "$i" -type f -exec LD_LIBRARY_PATH=/system/lib /system/bin/toolbox chcon u:object_r:$2:s0 {} +;
    find "$i" -type f -exec chcon u:object_r:$2:s0 '{}' +;
  done;
}

set_metadata() {
    set_perm $1 $2 $3 $5
    ch_con $4 $5
}

set_metadata_recursive() {
    set_perm_recursive $1 $2 $3 $4 $6
    ch_con_recursive $5 $5 $6
}

ui_print "Setting Permissions..."

    set_metadata 0 2000 0755 atfwd_exec /system/bin/ATFWD-daemon
    set_metadata 0 2000 0755 diag_exec /system/bin/PktRspTest
    set_metadata 0 2000 0755 zygote_exec /system/bin/app_process32
    set_metadata 0 2000 0755 at_distributor_exec /system/bin/at_distributor
    set_metadata 0 2000 0755 bootanim_exec /system/bin/bootanimation
    set_metadata 0 2000 0755 bugreport_exec /system/bin/bugreport
    set_metadata 0 2000 0755 clatd_exec /system/bin/clatd
    set_metadata 0 2000 0755 connfwexe_exec /system/bin/connfwexe
    set_metadata 0 2000 0755 ddexe_exec /system/bin/ddexe
    set_metadata 0 2000 0755 system_file /system/bin/debuggerd
    set_metadata 0 2000 0755 dex2oat_exec /system/bin/dex2oat
    set_metadata 0 2000 0755 dhcp_exec /system/bin/dhcpcd
    set_metadata 0 2000 0755 diag_exec /system/bin/diag_callback_client
    set_metadata 0 2000 0755 diag_exec /system/bin/diag_klog
    set_metadata 0 2000 0755 qlogd_exec /system/bin/diag_mdlog
    set_metadata 0 2000 0755 diag_exec /system/bin/diag_socket_log
    set_metadata 0 2000 0755 diag_exec /system/bin/diag_uart_log
    set_metadata 0 2000 0755 dnsmasq_exec /system/bin/dnsmasq
    set_metadata 0 2000 0755 dpmd_exec /system/bin/dpmd
    set_metadata 0 2000 0755 drmserver_exec /system/bin/drmserver
    set_metadata 0 2000 0755 dumpstate_exec /system/bin/dumpstate
    set_metadata 0 2000 0755 dumpsys_exec /system/bin/dumpsys
    set_metadata 0 2000 0755 dun-server_exec /system/bin/dun-server
    set_metadata 0 2000 0755 efsks_exec /system/bin/efsks
    set_metadata 0 2000 0755 system_file /system/bin/hostapd
    set_metadata 0 2000 0755 hostapd_exec /system/bin/hostapd_cli
    set_metadata 0 2000 0755 icd_exec /system/bin/icd
    set_metadata 0 0 0750 install_recovery_exec /system/bin/install-recovery.sh
    set_metadata 0 2000 0755 installd_exec /system/bin/installd
    set_metadata 0 2000 0755 insthk_exec /system/bin/insthk
    set_metadata 0 1000 0750 system_file /system/bin/iptables
    set_metadata 0 2000 0755 irsc_util_exec /system/bin/irsc_util
    set_metadata 0 2000 0755 keystore_exec /system/bin/keystore
    set_metadata 0 2000 0755 mdm_helper_exec /system/bin/ks
    set_metadata 0 2000 0755 lmkd_exec /system/bin/lmkd
    set_metadata 0 2000 0755 location_exec /system/bin/loc_launcher
    set_metadata 0 2000 0755 logd_exec /system/bin/logd
    set_metadata 0 2000 0755 system_file /system/bin/logwrapper
    set_metadata 0 2000 0755 macloader_exec /system/bin/macloader
    set_metadata 0 2000 0755 system_file /system/bin/mdm_helper
    set_metadata 0 2000 0755 mdm_helper_exec /system/bin/mdm_helper_proxy
    set_metadata 0 2000 0755 mdnsd_exec /system/bin/mdnsd
    set_metadata 0 2000 0755 mediaserver_exec /system/bin/mediaserver
    set_metadata 0 2000 0755 system_file /system/bin/mfgloader
    set_metadata 0 2000 0755 mm-pp-daemon_exec /system/bin/mm-pp-daemon
    set_metadata 0 2000 0755 mm-qcamerad_exec /system/bin/mm-qcamera-daemon
    set_metadata 0 2000 0755 mpdecision_exec /system/bin/mpdecision
    set_metadata 0 2000 0755 mtp_exec /system/bin/mtpd
    set_metadata 0 2000 0755 wcnss_service_exec /system/bin/ndc
    set_metadata 0 3003 02750 system_file /system/bin/netcfg
    set_metadata 0 2000 0755 netd_exec /system/bin/netd
    set_metadata 0 2000 0755 netmgrd_exec /system/bin/netmgrd
    set_metadata 0 2000 0755 dex2oat_exec /system/bin/patchoat
    set_metadata 0 2000 0755 perfd_exec /system/bin/perfd
    set_metadata 0 0 0755 system_file /system/bin/ping
    set_metadata 0 2000 0755 diag_exec /system/bin/PktRspTest
    set_metadata 0 2000 0755 ppp_exec /system/bin/pppd
    set_metadata 0 2000 0755 mdm_helper_exec /system/bin/qcks
    set_metadata 0 2000 0755 qmuxd_exec /system/bin/qmuxd
    set_metadata 0 2000 0755 tee_exec /system/bin/qseecomd
    set_metadata 0 2000 0755 racoon_exec /system/bin/racoon
    set_metadata 0 2000 0755 rild_exec /system/bin/rild
    set_metadata 0 2000 0755 rmt_storage_exec /system/bin/rmt_storage
    set_metadata 0 2000 0750 runas_exec /system/bin/run-as
    set_metadata 0 2000 0755 sapd_exec /system/bin/sapd
    set_metadata 0 2000 0755 sdcardd_exec /system/bin/sdcard
    set_metadata 0 2000 0755 sensorhubservice_exec /system/bin/sensorhubservice
    set_metadata 0 2000 0755 sensors_exec /system/bin/sensors.qcom
    set_metadata 0 2000 0755 servicemanager_exec /system/bin/servicemanager
    set_metadata 0 2000 0755 shell_exec /system/bin/sh
    set_metadata 0 2000 0755 ssr_diag_exec /system/bin/ssr_diag
    set_metadata 0 2000 0755 subsystem_ramdump_exec /system/bin/subsystem_ramdump
    set_metadata 0 2000 0755 surfaceflinger_exec /system/bin/surfaceflinger
    set_metadata 0 1000 0750 system_file /system/bin/tc
    set_metadata 0 2000 0755 diag_exec /system/bin/test_diag
    set_metadata 0 2000 0755 thermal-engine_exec /system/bin/thermal-engine
    set_metadata 0 2000 0755 thermal-engine_exec /system/bin/thermald
    set_metadata 0 2000 0755 time_daemon_exec /system/bin/time_daemon
    set_metadata 0 0 0750 uncrypt_exec /system/bin/uncrypt
    set_metadata 0 2000 0755 vdc_exec /system/bin/vdc
    set_metadata 0 2000 0755 vold_exec /system/bin/vold
    set_metadata 0 2000 0755 wcnss_service_exec /system/bin/wcnss_service
    set_metadata 0 2000 0755 system_file /system/bin/wlandutservice
    set_metadata 0 2000 0755 system_file /system/bin/wpa_supplicant
    set_metadata 0 2000 0755 system_file /system/etc
    set_metadata 0 2000 0755 system_file /system/etc/bluetooth
    set_metadata 0 0 0644 system_file /system/etc/bluetooth/auto_pair_devlist.conf
    set_metadata 0 0 0644 system_file /system/etc/bluetooth/bt_did.conf
    set_metadata 0 0 0644 system_file /system/etc/bluetooth/bt_stack.conf
    set_metadata 0 2000 0755 system_file /system/etc/dhcpcd/dhcpcd-hooks
    set_metadata 1014 2000 0550 system_file /system/etc/dhcpcd/dhcpcd-run-hooks
    set_metadata 0 0 0644 system_file /system/etc/event-log-tags
    set_metadata 0 2000 0755 system_file /system/etc/firmware/wlan/prima
    set_metadata 0 1000 0550 system_file /system/etc/init.qcom.sdio.sh
    set_metadata 0 2000 0755 system_file /system/etc/permissions
    set_metadata 0 2000 0755 system_file /system/etc/security
    set_metadata 0 2000 0755 system_file /system/etc/security/cacerts
    set_metadata 0 2000 0755 system_file /system/vendor/firmware
    set_metadata 0 2000 0755 system_file /system/vendor/lib
    set_metadata 0 2000 0755 system_file /system/vendor/lib/egl
    set_metadata 0 2000 0755 system_file /system/vendor/firmware
    set_metadata 0 0 0644 system_file /system/vendor/lib/hw/power.qcom.so
    set_metadata 0 0 0644 system_file /system/vendor/lib/mediadrm/libdrmclearkeyplugin.so
    set_metadata 0 0 0644 system_file /system/vendor/lib/mediadrm/libwvdrmengine.so
    set_metadata 0 2000 0755 system_file /system/vendor/media
    set_metadata 0 2000 0755 system_file /system/vendor/pittpatt
    set_metadata 0 2000 0755 system_file /system/vendor/pittpatt/models
    set_metadata 0 2000 0755 system_file /system/vendor/pittpatt/models/detection
    set_metadata 0 2000 0755 system_file /system/vendor/pittpatt/models/detection/multi_pose_face_landmark_detectors.8
    set_metadata 0 2000 0755 system_file /system/vendor/pittpatt/models/detection/yaw_roll_face_detectors.7.1
    set_metadata 0 0 0644 system_file /system/vendor/pittpatt/models/recognition/face.face.y0-y0-71-N-tree_7-wmd.bin
    set_metadata_recursive 0 0 0755 0644 system_file 
    set_metadata_recursive 0 2000 0755 0755 system_file 
    set_metadata_recursive 0 0 0755 0644 dhcp_system_file 
    set_metadata_recursive 0 2000 0755 0644 system_file 
    set_metadata_recursive 0 0 0755 0644 system_file 
    set_metadata_recursive 0 0 0755 0555 system_file 
    set_metadata_recursive 0 2000 0755 0644 system_file 
    set_metadata_recursive 0 2000 0755 0644 system_file 
    set_metadata_recursive 0 2000 0755 0644 system_file 
    set_metadata_recursive 0 2000 0755 0644 system_file 
    set_metadata_recursive 0 2000 0755 0755 system_file 