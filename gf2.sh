#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (安装源之后执行)
sed -i 's/+luci-theme-bootstrap/+luci-theme-material/g' ./feeds/luci/collections/luci/Makefile
sed -i "s/hostname='OpenWrt'/hostname='LEDE'/g" ./package/base-files/files/bin/config_generate
sed -i 's|<a href="https://github.com/openwrt/luci">Powered by {{ version.luciname }}|<a href="https://www.right.com.cn/forum/space-uid-671291.html"><突破重韦> |g' ./feeds/luci/themes/luci-theme-material/ucode/template/themes/material/footer.ut
sed -i 's/option lang auto/option lang zh_cn/g' feeds/luci/modules/luci-base/root/etc/config/luci
