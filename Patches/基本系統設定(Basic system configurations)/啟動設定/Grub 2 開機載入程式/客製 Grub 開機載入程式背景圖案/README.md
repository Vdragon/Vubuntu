# 客製 Grub 開機載入程式背景圖案
## 修正方式
1. 以 root 身份於 /boot 目錄新增 background.png 符號連結指向 /usr/share/wallpapers/kde-default.png
2. 以 root 身分於終端機內執行 update-grub 重新產生 Grub 設定檔