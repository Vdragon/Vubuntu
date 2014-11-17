# 不允許 root 使用者的遠端登入，減少被侵入的風險
## 修正方式
1. 以 root 身份編輯 /etc/ssh/sshd_config 設定檔將 PermitRootLogin 設定值改為 no
2. 以 root 身份執行 `service ssh restart` 重新啟動 ssh 服務