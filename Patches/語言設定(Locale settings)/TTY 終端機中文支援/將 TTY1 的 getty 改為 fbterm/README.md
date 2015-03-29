# 將 TTY1 的 getty 改為 fbterm
## 修正方式
1. `# stop tty1`
2. 以 root 身份編輯 /etc/init/tty1.override 設定檔，加上  
exec rungetty -u root tty1 -- fbterm -- login
3. `# start tty1`

## 已知問題
無法正常啟動輸入法