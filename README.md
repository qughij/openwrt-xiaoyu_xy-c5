# 小娱C5路由器OpenWrt固件Lean大版
>简要说明

## 硬件信息
* 架构。
* CPU。
* 内存。
## 基础包
* a
* b
## 主题
* bootstrap
* [Argon](https://github.com/jerrykuku/luci-theme-argon)
## 插件
* [luci-app-zerotier](https://github.com/coolsnowwolf/lede/tree/master/package/lean/luci-app-zerotier)
* [luci-app-jd-dailybonus](https://github.com/jerrykuku/luci-app-jd-dailybonus)
## 拓展功能
* IpV6支持
* RPC支持
## 默认配置
* 登录地址和账号密码
* 内网
## 编译说明
* 编译方法。
* 编译时间。
* 编译版本。
自动编译，分基础版和加强版。基础版包含基础软件，加强版在基础版的基础上，添加了xxx等软件。


## 常见问题说明Q&A

### 如何更新固件?

### 2021年6月发生了什么，导致必须清楚配置升级？

### 如何手动安装或更新插件包?

### 如何取消默认编译进固件的插件？

### 编译openwrt时取消预选的软件包?





**说明：** 采用GitHub actions自动编译，每周一拉取[Lean大的源码仓库](https://github.com/coolsnowwolf/lede)更新。编译配置中取消了部分默认预选插件，添加了部分插件包括ipv6支持需要的插件。配置详见[这里](https://github.com/qughij/openwrt-xiaoyu_xy-c5/blob/master/.github/workflows/build.yml)


## 关于固件的主题选择

2021.08.15 还是选择了argon主题，默认的确实用不惯。

最初编译固件时，选择添加了argon主题（CONFIG_PACKAGE_luci-theme-argon=y），该主题为紫色为主色，左侧菜单，间距适当，按钮清晰，漂亮大气。

所以，当时考虑着要把它设为默认的，取消原来的bootstrap主题。

但后来又放弃了，主要是感觉路由器不像其它管理后台，设置好后就不会经常登录查看，没有太高要求，后台只要界面流畅、可靠就行。

因此，还是选择了默认的主题。


## 关于编译进固件的插件

Lean大的仓库提供了各式功能的插件，但对于小娱C5，用到的着实不多。

所以按照路由器作为网络入口和出口的基本准则，选定了去广告、动态DDNS、openvpn、zerotier以及部分局域网优化插件编译进固件。

同时，取消了文件传输、KMS激活、ftp服务器、访问控制等默认选中的插件

## 关于固件的更新

一开始使用网件R6300时，总是在等着论坛的大佬们更新固件，以体验新的插件。一有新固件放出，就赶紧刷上，心情激动的不行。

购买小娱C5后，一开始是在恩山论坛找大佬们编译好的固件，看看简介，觉得可以，赶紧下来尝试（最开始跟的是op.hyird.xyz，结果大佬3.30更新说跑路了，小娱的固件和插件包都没了）

在论坛看的多了，发现好多坛友都在发布自己编译的openwrt固件，所以看了很多教程后，决定开始自己定制自己的固件。

印象中看一篇教程中说，openwrt的固件只要稳定、流畅，就没必要一直更新。想想也是，家里用着的路由器没必要天天升级。所以一周跟随上游生成固件，看看有大的更新再刷上。


## 关于ipv6

现在基本上手机网络和宽带都能获得ipv6地址了，所以还是要用起来。

况且，DDNS可以解析ipv6，实现外网访问路由器或其它服务（openvpn可以通过tcp-ipv6实现连接到家庭网络）

但注意的是，在外使用时，一定要先确认自己的手机网络获得了ipv6地址，不然是访问不了基于ipv6的服务的。


## 关于编译时取消预选插件

默认设置在/openwrt/include目录下面的target.mk中，参考知乎文章[编译openwrt时取消预选的软件包](https://zhuanlan.zhihu.com/p/70656867)
