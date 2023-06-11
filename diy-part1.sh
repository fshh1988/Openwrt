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
#sed -i '2s/coolsnowwolf/fshh1988/g' feeds.conf.default


#Add some packages
mkdir -p package/mypackage
pushd package/mypackage

git clone https://github.com/sypopo/luci-theme-atmaterial
git clone https://github.com/immortalwrt-collections/openwrt-gowebdav
git clone https://github.com/tty228/luci-app-adguardhome

# Add luci-app-ssr-plus
#git clone --depth=1 https://github.com/fw876/helloworld

# Add luci-app-passwall
#git clone --depth=1 https://github.com/xiaorouji/openwrt-passwall

# Add luci-app-vssr <M>
#git clone --depth=1 https://github.com/jerrykuku/lua-maxminddb
#git clone --depth=1 https://github.com/jerrykuku/luci-app-vssr

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
#git clone --depth=1 https://github.com/destan19/OpenAppFilter

popd
