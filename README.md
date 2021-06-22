# Lark-Gtk

Lark (FeiShu) for Linux

飞书Linux客户端 （基于飞书web版）

 ![release-download-count](https://img.shields.io/github/downloads/Ericwyn/electron-lark/total.svg)

 ***下载地址: [Release](https://github.com/ttys3/lark-for-linux/releases)***

Gtk 版的飞书 Feishu (原 Lark)，对网页版本进行封装。

相比起普通网页版，功能如下

- 独立的运行窗口，不容易误关闭
- 关闭程序时后台运行，隐藏到通知栏小图标，双击可重新打开界面
- 新消息提醒，状态栏小图标闪烁， 同时显示未读消息数量
- 解除浏览器限制，避免因浏览器版本不对而提示无法使用

## Known issues

1. 图片浏览器打开的图片，如果 ctrl+c 复制了，只能在图片浏览器保持打开时进行粘贴发送图片(epiphany-browser也有同样的问题, 因此可能是webkit2gtk的问题)

2. 截屏工具复制到clipboard的图片，暂时无法粘贴发送 (epiphany-browser也有同样的问题, 因此可能是webkit2gtk的问题), 这个貌似是 webkit 的问题，见 <https://bugs.webkit.org/show_bug.cgi?id=218519> 和 <https://gitlab.gnome.org/GNOME/epiphany/-/issues/1388>


## 运行截图

![screen-shot](lark-gtk-2021-06-10_13-26.png?raw=true)

## 版本记录

### v0.6.1
- 优化通知优先级设置（下载文件成功:High, 下载文件失败：Urgent， 普通消息：Low, 消息标题或内容里包含 "严重告警" 时：High）
- 移除普通消息默认的 View 按钮。

### v0.6.0
- 修复从通知点击弹出窗口后输入框失去焦点的问题
- 收到新消息时支持提示声音

### v0.5.5
- 修复如果将窗口切到后面（不是点x隐藏窗口)后，再点击 "show lark" 无法将窗口焦点拉到最顶层（最前面）的问题
- 修复点击通知的“View" 按钮 无法将窗口焦点拉到最顶层（最前面）的问题

### v0.5.4
- 优化通知 窗口在最顶层的时候不提示通知，避免干扰
 
### v1.0.3
 - 修复 ubuntu 下锁屏后 appTray 消失的问题

### v1.0.2
 - 修复已关闭提醒的聊天仍然会闪烁 tray icon 的问题

### v1.0.1
 - 去除页面水印
 - 修改了应用菜单,去除无用按钮

### v1.0.0
 - 初始版本


## 安装方法 (二进制安装)
 - 请从 [Release](https://github.com/ttys3/lark-for-linux/releases) 页面直接下载及安装 （ubuntu 21.04 上测试通过）


## Thanks

本gtk版有一些处理思路来自 <https://github.com/Ericwyn/electron-lark> 项目，感谢ing
