#!/bin/bash
cd openwrt
# wireless
#rm -rf files/etc/config/wireless
#rm -rf files/etc/modules.d/wireless_enable
# Firewall custom
#echo "iptables -t nat -I POSTROUTING -o eth0 -j MASQUERADE" >> package/network/config/firewall/files/firewall.user
# geodata
wget -q -cP files/usr/share/v2ray https://github.com/Loyalsoldier/v2ray-rules-dat/releases/latest/download/geosite.dat
wget -q -cP files/usr/share/v2ray https://github.com/Loyalsoldier/v2ray-rules-dat/releases/latest/download/geoip.dat

# Add luci-theme
#git clone https://github.com/jerrykuku/luci-theme-argon.git
#make menuconfig #choose LUCI->Theme->Luci-theme-argon
#make -j1 V=s

git clone  https://github.com/kenzok8/openwrt-packages  package/luci-theme-argone 

git clone https://github.com/kenzok8/openwrt-packages  package/luci-theme-atmaterial_new

#Add amlogic管理
svn co https://github.com/ophub/luci-app-amlogic/trunk/luci-app-amlogic package/lean/luci-app-amlogic
#Add luci-app-passwall

# => passwall2
git clone https://github.com/xiaorouji/openwrt-passwall-packages.git -b main package/passwall_package
git clone https://github.com/xiaorouji/openwrt-passwall2.git package/passwall2

#Add openclash
#svn co https://github.com/vernesong/OpenClash/trunk/luci-app-openclash package/lean/luci-app-openclash
#Add luci-app-smartdns
#git clone -b lede https://github.com/pymumu/luci-app-smartdns.git package/lean/luci-app-smartdns
#Add luci-app-adguardhome
#git clone https://github.com/rufengsuixing/luci-app-adguardhome.git package/lean/luci-app-adguardhome

#luci-app-filebrowser
git clone  https://github.com/kenzok8/openwrt-packages  package/luci-app-filebrowser

#luci-app-mosdns
git clone  https://github.com/kenzok8/openwrt-packages   package/luci-app-mosdns

