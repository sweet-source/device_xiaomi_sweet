echo 'cloning sm6150-common'
git clone -b pixel https://github.com/kamleshhv/device_xiaomi_sm6150-common.git device/xiaomi/sm6150-common

echo 'cloning vendor'
git clone -b pixel https://github.com/kamleshhv/vendor_xiaomi_sweet.git vendor/xiaomi/sweet

echo 'cloning sm6150-common'
git clone -b pixel https://github.com/kamleshhv/vendor_xiaomi_sm6150-common.git vendor/xiaomi/sm6150-common

echo 'cloning kernel'
git clone -b fourteen https://github.com/unmoved21/kernel_xiaomi_sweet.git --depth=1 kernel/xiaomi/sm6150

echo 'cloning miuicamera'
git clone -b fourteen https://github.com/PixelOS-Devices/vendor_xiaomi_sweet-miuicamera.git vendor/xiaomi/sweet-miuicamera

echo 'hardware/xiaomi'
rm -rf hardware/xiaomi
git clone -b 14 https://github.com/kamleshhv/android_hardware_xiaomi.git hardware/xiaomi

