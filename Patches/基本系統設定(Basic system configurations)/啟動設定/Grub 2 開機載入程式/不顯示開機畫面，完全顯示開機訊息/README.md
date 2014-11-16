# 不顯示開機畫面，完全顯示開機訊息
## 修正方式
以 root 身份編輯 `/etc/default/grub` 設定檔，參考 [grub.Vubuntu_patch.不顯示開機畫面，完全顯示開機訊息](grub.Vubuntu_patch.不顯示開機畫面，完全顯示開機訊息)將 GRUB_CMDLINE_LINUX_DEFAULT 設定值的 splash 、quiet Linux 作業系統核心參數移除
