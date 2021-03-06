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
sed -i 's/192.168.1.1/192.168.123.165/g' package/base-files/files/bin/config_generate

#openclash packages
git clone -b master  https://github.com/vernesong/OpenClash.git package/luci-app-openclash

#passwall package 
git clone https://github.com/xiaorouji/openwrt-passwall.git  package/passwall
git clone -b luci  https://github.com/xiaorouji/openwrt-passwall.git  package/luci-app-passwall

#helloworld package
git clone -b master  https://github.com/fw876/helloworld.git  package/helloworld
