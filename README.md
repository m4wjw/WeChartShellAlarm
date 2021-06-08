# WeChartShellAlarm安装使用教程
作者：Sam
***
[TOC]
***
## 安装
### 获取脚本保存位置
`grep alertscripts /etc/zabbix/zabbix_server.conf `
AlertScriptsPath=/usr/lib/zabbix/alertscripts
### 安装脚本
#### 下载脚本
**下载到server端**
修改权限
`chmod 755 wechat.sh`
`chown zabbix.zabbix wechat.sh`
## 测试
`./wechat.sh <corpid> <secretid> <agentid> <你的企业微信用户名> "$(date)"`
这些信息都可以在企业微信页面找到
## web server设置
新建“报警媒介类型”为`wechat.sh`

设置五个参数，分别为：
1. corpid
2. corpsecret
3. agentid
4. userid
5. message

报警内容可以通过宏来自定义

## 更多关于企业微信的api可以参考企业微信网站api
[https://work.weixin.qq.com/api/doc/90001/90143/90372](https://work.weixin.qq.com/api/doc/90001/90143/90372)
