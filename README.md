# Electron-Lark

 ![release-download-count](https://img.shields.io/github/downloads/Ericwyn/electron-lark/total.svg)

 ***下载地址: [Release](https://github.com/ttys3/lark-for-linux/releases)***


electron 版的飞书 Feishu (原 Lark)，对网页版本进行封装

相比起普通网页版，功能如下

- 独立的运行窗口，不容易误关闭
- 关闭程序时后台运行，隐藏到通知栏小图标，双击可重新打开界面
- 新消息提醒，状态栏小图标闪烁
- 解除浏览器限制，避免因浏览器版本不对而提示无法使用

已知问题
 - ~~ubuntu18.04 Gnome 桌面，锁屏之后，系统通知栏图标 Tray 会消失, 当前规避方案如下~~
    - ~~当有新消息提醒的时候，会重置通知栏图标 tray，保证哪怕因为锁屏导致 tray 消失，在收到新消息之后也会重新出现并闪烁~~
    - 使用 alt + shift + m 的快捷键，重新显示界面以及 dock 图标
    - V1.0.3 版本已修复，添加了一个 linux 锁屏监听，自动 reset appTray


(另外有一说一, 飞书的技术架构就是基于 Electron 的, Windows 和 Mac 客户端也都是使用 Electron 打包, 既然如此为什么不顺便为 Linux 也提供支持呢 ?)


## 运行截图

![screen-shot](screenshot/electron-lark-1.png)

## 版本记录
 
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
 - 请从 [Release](https://github.com/Ericwyn/electron-lark/releases) 页面直接下载及安装 （ubuntu 21.04 上测试通过）

