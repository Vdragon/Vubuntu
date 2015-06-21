# 提前修正 Launchpad Bug #1258597，修正開機選單不出現的問題
## 軟體缺陷報告
[Bug #1258597 “Warning: Setting GRUB_TIMEOUT to a non-zero value ...” : Bugs : “grub2” package : Ubuntu](https://bugs.launchpad.net/ubuntu/+source/grub2/+bug/1258597)

## 修正方式
以 root 身份編輯 `/etc/default/grub` 設定檔，參考 [grub.Vubuntu_patch.提前修正 Launchpad Bug #1258597，修正開機選單不出現的問題](./grub.Vubuntu_patch.提前修正%20Launchpad%20Bug%20%231258597，修正開機選單不出現的問題)進行修改

## 參考資料
Grub 的 GNU Info 使用手冊第 6.1 章 - Simple configuration handling
info:/grub/Simple configuration
