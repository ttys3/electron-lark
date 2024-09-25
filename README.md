# Lark-Gtk

Lark (FeiShu) for Linux

飞书Linux客户端 （基于飞书web版）

 ![release-download-count](https://img.shields.io/github/downloads/ttys3/lark-for-linux/total.svg)

 ***下载地址: [Release](https://github.com/ttys3/lark-for-linux/releases)***

Gtk 版的飞书 Feishu (原 Lark)，对网页版本进行封装。

相比起普通网页版，功能如下

- 免费打扰通知提醒功能（GNOME "Do Not Disturb" 模式支持）。以下条件自动设置成 `Urgent` 级别 （注： 设置成 Urgent 会无视 GNOME "Do Not Disturb" 模式）：

  1. 群聊有人@时 （单独被@ 和 @All 两种情况）
  2. 收到单聊消息时
  3. 下载文件成功
  4. 下载文件失败 
  5. 消息标题或内容里包含 "严重告警" 时
  6. 除此之外 ，其它普通消息全部设置成 Low 级别


- 独立的运行窗口，不容易被误关闭
- 支持图片下载 (点击查看大图, 然后右击选择 Download)
- 关闭程序时后台运行，隐藏到通知栏小图标，双击可重新打开界面
- 新消息提醒，状态栏小图标闪烁， 同时显示未读消息数量
- 解除浏览器限制，避免因浏览器版本不对而提示无法使用

## Known issues

### 1. Ctrl+V 无法在聊天框直接粘贴图片的问题

截屏工具复制到 clipboard 的图片无法粘贴发送的问题已经解决, 这个问题不在于软件本身,而在于 `webkitgtk` 引擎, 
请去 [Release](https://github.com/ttys3/lark-for-linux/releases) 页面下载已经 patch 好的 webkitgtk 包安装即可.

<strike>截屏工具复制到clipboard的图片，暂时无法粘贴发送</strike> (通过 patch webkit2gtk 解决), GNOME 自带浏览器 epiphany-browser 也有同样的问题, 
已经确认这是 `webkit2gtk` 的问题, 见 https://bugs.webkit.org/show_bug.cgi?id=218519 和 https://gitlab.gnome.org/GNOME/epiphany/-/issues/1388 

## 运行截图

![screen-shot](lark-gtk-2021-06-10_13-26.png?raw=true)

## 更新记录
### v2.1.9

style: adjust default window size

build: build binary via flatpak

chore: update runtime version to '47' in flatpak configuration

### v2.1.8

fix: update Mac OS Safari version to use Feishu web 7.24.0 (otherwise it will fallback to old web UI)

chore: update default URL for app configuration  

chore: add .feishu.cn/minutes/ to directly open urls

### v2.1.7

chore: update webkit6 to 0.4, gtk4 to 0.9

### v2.1.6

webview: open most of external links (include feishu project and docs) in system brower instead of webview

### v2.1.5

chore: add view Directory action button for download skip notification
fix(notification): ensure view action activates on download skip
   > Failed to activate action for io.github.ttys3.LarkGtk: Gio.DBusError: GDBus.Error:org.freedesktop.DBus.Error.InvalidArgs: Invalid parameter for action ‘view-notify’: expected type s but got type ay

refactor: correct handle exists file skip download logic
refactor: refine action target value var name
chore: add note about DMABuf renderer
chore: update user agent version due to lark project browser uprade notice
chore: update webkit6 and gtk to use latest features
chore(logging): show source file location

### v2.1.4

update to webkitgtk-2.44.1
chore: update to org.gnome.Platform runtime version 46
perf: do not set WEBKIT_DISABLE_DMABUF_RENDERER  to enable hardware acceleration

### v2.1.3

webkitgtk: enable Hardware Acceleration for better performance

update to webkitgtk-2.44.0

### v2.1.2

updated to gtk-rs 0.8, glib and gio 0.19 version
added flatpak build

### v2.1.0
- perf: use shared web context which will make WebKitWebProcess use shared WebKitNetworkProcess (just like GNOME epiphany)
- chore: disable connect_mouse_target_changed
- 点击关闭按钮隐藏改为最小化到任务栏
- refine watermark remove implementation

### v2.0.0
- 从 gtk3 升级到 gtk4
- 移除托盘图标, 因为依赖的 system tray 实现 [libappindicator](https://github.com/AyatanaIndicators/libayatana-appindicator) 不支持 gtk4
- fix: call ` terminate_web_process()` when changelog webkit exit

### v1.0.1
- 不弹出 "desktop notification permission not granted!" alert (当未设置 `APP_LARK_URL=https://xxxx.feishu.cn/messenger/` 时)
  此时, 实际上 notification permission 是 OK 的.

### v1.0.0
- 升级到 gtk-rs 0.15.x 系列 crates
- 升级 webkit2gtk crate 到 0.18.2, webkit2gtk 版本 v2.36
- libappindicator-rs use https://github.com/tauri-apps/libappindicator-rs.git
- HardwareAccelerationPolicy 设置为 Always
- new feature: support auto remove external group chat messages watermark background image
- refine Notification handling
- fix: 修复内存泄露问题 (WebKitWebProcess 和 WebKitNetworkProcess 进程无法正常退出的问题)

### v0.9.4
- 升级到 gtk-rs 0.14.0 系列 crates
- 修复 changelog 窗口 gtk `assertion 'WebCore::isValidUserAgentHeaderValue(userAgentString)' failed` 错误

### v0.9.2
- 修复下载时文件存在检测问题

### v0.9.1
- 添加 `Update` 按钮用于快捷打开 release 页面下载更新版本的 app

### v0.9.0
- 重新设定默认下载目录为 `~/Downloads/lark-gtk` (之前是~/Downloads)

### v0.8.0
- 添加 `Reload` 按钮，用于网络不好的时候刷新页面
- 修复菜单图标不显示的问题
- 添加 Changelog 对话框用于显示更新日志

### v0.7.2
- 优化通知优提醒： 增加以下条件自动设置成Urgent级别：群聊有人@时 （单独被@ 和 @All 两种情况），收到单聊消息时 （注： 设置成 Urgent 会无视 GNOME "Do Not Disturb" 模式）

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

## 其它 Tips
 
### 1. 图片复制粘贴问题

> 图片浏览器打开的图片，如果 ctrl+c 复制了, 请保持图片浏览器打开, 直到已经ctrl +v 进行粘贴发送完了再关闭图片浏览器 (epiphany-browser也有同样的问题, 可能是webkit2gtk的问题也有可能是 GNOME 实现问题)

### 2. 通知权限问题

关于每次退出后打开会显示一次需要允许桌面通知的提示, 请设置  `APP_LARK_URL` 环境变量. 

可以修改 `com.github.ttys3.lark_gtk.desktop` 文件
```ini
Exec=env APP_LARK_URL=https://xxxx.feishu.cn/messenger/ /usr/bin/lark-gtk %U
```

或者加到 `/etc/environment`
```
APP_LARK_URL=https://xxxx.feishu.cn/messenger/
```

`xxxx` 为你们公司的标识. 打开  https://feishu.cn/messenger/ 会自动跳到那个地址.

## Thanks

本gtk版有一些处理思路来自 <https://github.com/Ericwyn/electron-lark> 项目，感谢ing
