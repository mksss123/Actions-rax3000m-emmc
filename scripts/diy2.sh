#!/bin/bash
echo "gitclone apfree-wifigod-luci"
git clone https://github.com/liudf0716/luci-app-apfree-wifidog
ls
echo "mv to package "
mv luci-app-apfree-wifidog feeds/luci/applications/luci-app-apfree-wifidog/
./scripts/feeds install luci -a
./scripts/feeds install luci -luci-app-apfree-wifidog

make menuconfig
#更改默认地址为192.168.6.1
sed -i 's/192.168.1.1/192.168.6.1/g' package/base-files/files/bin/config_generate
