# 啟用休眠
## 修正方法
以 root 身份建立 /etc/polkit-1/localauthority/50-local.d/com.ubuntu.enable-hibernate.pkla 檔案，加入下列內容
```
[Re-enable hibernate by default in upower]
Identity=unix-user:*
Action=org.freedesktop.upower.hibernate
ResultActive=yes

[Re-enable hibernate by default in logind]
Identity=unix-user:*
Action=org.freedesktop.login1.hibernate;org.freedesktop.login1.hibernate-multiple-sessions
ResultActive=yes
```

## 參考資料
[https://help.ubuntu.com/14.04/ubuntu-help/power-hibernate.html](https://help.ubuntu.com/14.04/ubuntu-help/power-hibernate.html)
