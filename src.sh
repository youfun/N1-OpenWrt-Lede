#!/bin/bash
cd openwrt
# Add a feed source
echo 'src-git SSRplus https://github.com/fw876/helloworld' >>feeds.conf.default
echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
echo 'src-git passwall2 https://github.com/xiaorouji/openwrt-passwall2' >>feeds.conf.default
echo 'src/gz openwrt_packages https://dl.openwrt.ai/23.05/packages/aarch64_generic/packages' >>feeds.conf.default
echo 'src/gz openwrt_luci https://dl.openwrt.ai/23.05/packages/aarch64_generic/luci' >>feeds.conf.default

