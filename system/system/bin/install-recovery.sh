#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:e8f7a2b8c9dd6df5c56d2c952104b3f16e754c64; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:67108864:ebaa558c472394c8388582c701f8c88c3ec7dc37 EMMC:/dev/block/bootdevice/by-name/recovery e8f7a2b8c9dd6df5c56d2c952104b3f16e754c64 67108864 ebaa558c472394c8388582c701f8c88c3ec7dc37:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
