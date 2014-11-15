# 建立 EFI 系統磁碟分割區(ESP)的掛載點目錄/
## 設定步驟
1. 以 root 身份新增 /boot/efi 目錄
2. 以 root 身份將 `fstab.Vubuntu_patch.add_efi_system_partition_entry` 的內容插入 `/etc/fstab` 設定檔中
3. 如果系統使用 UEFI 開機模式的話將 EFI 系統磁碟分割區(ESP)的 fstab 掛載項目解除註解並設定好正確的 UUID 識別碼