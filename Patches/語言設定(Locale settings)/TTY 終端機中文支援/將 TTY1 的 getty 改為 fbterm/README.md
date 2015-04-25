# 將 TTY1 的 getty 改為 fbterm
## 修正方式
1. `# stop tty1`
2. 以 root 身份編輯 /etc/init/tty1.override 設定檔，加上  
exec rungetty -u root tty1 -- fbterm -- login
3. `# start tty1`

## 已知問題
### 無法正常啟動 ucimf 輸入法
這是 ucimf 的軟體缺陷，ucimf 於 HOME 環境變數未設定的情況下會程式崩潰，上游新版本中已經修正本問題

#### 暫時解決方案<br />Workarounds
於 exec 後加上「env HOME=/root」即可
