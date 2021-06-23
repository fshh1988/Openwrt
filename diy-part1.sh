#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default

#Add some packages
git clone https://github.com/kuoruan/openwrt-v2ray.git ./package/mypackage/openwrt-v2ray
git clone https://github.com/kuoruan/luci-app-v2ray.git -b legacy ./package/mypackage/luci-app-v2ray
git clone https://github.com/binge8/luci-app-godproxy.git ./package/mypackage/luci-app-godproxy
git clone https://github.com/sypopo/luci-theme-atmaterial.git ./package/mypackage/luci-theme-atmaterial
git clone https://github.com/immortalwrt/openwrt-gowebdav.git ./package/mypackage/openwrt-gowebdav

pushd package/mypackage

# Add luci-app-ssr-plus
git clone --depth=1 https://github.com/fw876/helloworld

# Add luci-app-passwall
git clone --depth=1 https://github.com/xiaorouji/openwrt-passwall

# Add luci-app-vssr <M>
git clone --depth=1 https://github.com/jerrykuku/lua-maxminddb.git
git clone --depth=1 https://github.com/jerrykuku/luci-app-vssr

# Add ServerChan
git clone --depth=1 https://github.com/tty228/luci-app-serverchan

# Add OpenClash
git clone --depth=1 -b master https://github.com/vernesong/OpenClash

# Add luci-app-onliner
git clone --depth=1 https://github.com/rufengsuixing/luci-app-onliner

# Add luci-theme-argon
git clone --depth=1 -b 18.06 https://github.com/jerrykuku/luci-theme-argon
git clone --depth=1 https://github.com/jerrykuku/luci-app-argon-config
rm -rf ../lean/luci-theme-argon

# Add OpenAppFilter
git clone --depth=1 https://github.com/destan19/OpenAppFilter

popd
