#!/bin/bash

git clone https://github.com/liudf0716/luci-app-apfree-wifidog package/applications/luci-app-apfree-wifidog
#更改默认地址为192.168.6.1
sed -i 's/192.168.1.1/192.168.6.1/g' package/base-files/files/bin/config_generate
