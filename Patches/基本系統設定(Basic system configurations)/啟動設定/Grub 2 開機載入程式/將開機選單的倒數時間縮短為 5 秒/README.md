# 將開機選單的倒數時間縮短為 5 秒
## 修正方式
1. 將 [Vubuntu patch - 將開機選單的倒數時間縮短為 5 秒.cfg](Vubuntu patch - 將開機選單的倒數時間縮短為 5 秒.cfg) 檔案安裝到 `/etc/default/grub.d/` 目錄中（擁有者／群組：root/root、Unix 權限設定：0644）
2. 以 root 身份在終端機中執行 `update-grub` 重新產生 Grub 開機載入程式設定檔(/boot/grub/grub.cfg)