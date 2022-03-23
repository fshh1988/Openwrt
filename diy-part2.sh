#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
#sed -i 's/192.168.1.1/10.0.0.250/g' package/base-files/files/bin/config_generate

# Fix frpc
sed 's/services", "frp/services", "frpc/g' feeds/luci/applications/luci-app-frpc/luasrc/controller/frp.lua
sed '2s/frp/frpc/g' feeds/luci/applications/luci-app-frpc/luasrc/view/frp/frp_status.htm

rm -rf ./feeds/luci/applications/luci-app-unblockmusic
cp -r /home/runner/work/Openwrt/Openwrt/luci-app-unblockneteasemusic-go ./feeds/luci/applications/luci-app-unblockneteasemusic-go
./scripts/feeds install -a
