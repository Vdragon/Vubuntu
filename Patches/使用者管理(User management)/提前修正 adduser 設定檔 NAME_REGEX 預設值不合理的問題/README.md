# 提前修正 adduser 設定檔 NAME_REGEX 預設值不合理的問題
## 設定步驟
1. 以 root 身份編輯 `/etc/adduser.conf` 設定檔，將 `NAME_REGEX` 設定值改為 `"^[a-z][-a-z0-9_.]*$"`

## 參考來源
[https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=630750](https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=630750)
