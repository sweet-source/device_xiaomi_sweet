echo 'cloning sm6150-common'
git clone -b yaap https://github.com/sweet-source/device_xiaomi_sm6150-common.git device/xiaomi/sm6150-common

echo 'cloning vendor'
git clone -b pixel https://github.com/kamleshhv/vendor_xiaomi_sweet.git vendor/xiaomi/sweet

echo 'cloning sm6150-common'
git clone -b pixel https://github.com/kamleshhv/vendor_xiaomi_sm6150-common.git vendor/xiaomi/sm6150-common

echo 'cloning kernel'
git clone -b sleepy https://github.com/kamleshhv/kernel_xiaomi_sm6150.git --depth=1 kernel/xiaomi/sm6150

echo 'cloning miuicamera'
git clone -b fourteen https://github.com/PixelOS-Devices/vendor_xiaomi_sweet-miuicamera.git vendor/xiaomi/sweet-miuicamera

echo 'hardware/xiaomi'
rm -rf hardware/xiaomi
git clone -b 14 https://github.com/kamleshhv/android_hardware_xiaomi.git hardware/xiaomi

rm -rf prebuilts/clang/host/linux-x86/clang-neutron;
mkdir prebuilts/clang/host/linux-x86/clang-neutron; cd prebuilts/clang/host/linux-x86/clang-neutron; 
curl -LO "https://raw.githubusercontent.com/Neutron-Toolchains/antman/main/antman";
chmod +x antman; ./antman -S=05012024; ./antman --patch=glibc; cd ../../../../../;
sed -i '/CLANG_EXTRA_FLAGS += --hip-path=\/dev\/null/d' vendor/yaap/build/tasks/kernel.mk;
