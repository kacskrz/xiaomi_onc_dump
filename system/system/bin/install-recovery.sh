#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:697e20a2d6cc0f4f32a8b5375a0378e3f2b0bcdc; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:67108864:f219b4c2ba64831abc0abc74da8924e5c858d6ba EMMC:/dev/block/bootdevice/by-name/recovery 697e20a2d6cc0f4f32a8b5375a0378e3f2b0bcdc 67108864 f219b4c2ba64831abc0abc74da8924e5c858d6ba:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
