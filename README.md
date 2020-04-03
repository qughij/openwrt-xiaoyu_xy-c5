# openwrt-xiaoyu-xy-c5

## 默认设置在/openwrt/include目录下面的target.mk中

 ```
# Default packages - the really basic set
DEFAULT_PACKAGES:=base-files libc libgcc busybox dropbear mtd uci opkg netifd fstools uclient-fetch logd urandom-seed urngd \
block-mount coremark kmod-nf-nathelper kmod-nf-nathelper-extra kmod-ipt-raw wget libustream-openssl ca-certificates \
default-settings luci luci-app-ddns luci-app-upnp luci-app-adbyby-plus luci-app-autoreboot \
luci-app-filetransfer luci-app-vsftpd luci-app-ssr-plus luci-app-unblockmusic \
luci-app-arpbind luci-app-vlmcsd luci-app-wol luci-app-ramfree \
luci-app-sfe luci-app-flowoffload luci-app-nlbwmon luci-app-accesscontrol luci-app-cpufreq \
ddns-scripts_aliyun ddns-scripts_dnspod
# For nas targets
DEFAULT_PACKAGES.nas:=block-mount fdisk lsblk mdadm
# For router targets
DEFAULT_PACKAGES.router:=dnsmasq-full iptables ppp ppp-mod-pppoe firewall kmod-ipt-offload kmod-tcp-bbr
DEFAULT_PACKAGES.bootloader:=
 ```
## 插件整理
* luci-app-ddns（ddns-scripts_aliyun、ddns-scripts_dnspod）
* luci-app-upnp 
* luci-app-adbyby-plus 
* luci-app-autoreboot 
* luci-app-filetransfer 
* luci-app-vsftpd 
* luci-app-ssr-plus 
* luci-app-unblockmusic 
* luci-app-arpbind 
* luci-app-vlmcsd 
* luci-app-wol 
* luci-app-ramfree 
* luci-app-sfe 
* luci-app-flowoffload 
* luci-app-nlbwmon 
* luci-app-accesscontrol 
* luci-app-cpufreq 
