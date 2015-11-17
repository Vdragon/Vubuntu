# 提前修正 Launchpad Bug #1258597，修正開機選單不出現的問題
## 軟體缺陷報告
[Bug #1258597 “Warning: Setting GRUB_TIMEOUT to a non-zero value ...” : Bugs : “grub2” package : Ubuntu](https://bugs.launchpad.net/ubuntu/+source/grub2/+bug/1258597)

## 修正方式
以 root 身份編輯 `/etc/default/grub` 設定檔，參考 [grub.Vubuntu_patch.提前修正 Launchpad Bug #1258597，修正開機選單不出現的問題](https://github.com/Vdragon/Vubuntu/blob/master/Patches/%E5%9F%BA%E6%9C%AC%E7%B3%BB%E7%B5%B1%E8%A8%AD%E5%AE%9A(Basic%20system%20configurations)/%E5%95%9F%E5%8B%95%E8%A8%AD%E5%AE%9A/Grub%202%20%E9%96%8B%E6%A9%9F%E8%BC%89%E5%85%A5%E7%A8%8B%E5%BC%8F/%E6%8F%90%E5%89%8D%E4%BF%AE%E6%AD%A3%20Launchpad%20Bug%20%231258597%EF%BC%8C%E4%BF%AE%E6%AD%A3%E9%96%8B%E6%A9%9F%E9%81%B8%E5%96%AE%E4%B8%8D%E5%87%BA%E7%8F%BE%E7%9A%84%E5%95%8F%E9%A1%8C/grub.Vubuntu_patch.%E6%8F%90%E5%89%8D%E4%BF%AE%E6%AD%A3%20Launchpad%20Bug%20%231258597%EF%BC%8C%E4%BF%AE%E6%AD%A3%E9%96%8B%E6%A9%9F%E9%81%B8%E5%96%AE%E4%B8%8D%E5%87%BA%E7%8F%BE%E7%9A%84%E5%95%8F%E9%A1%8C)進行修改

## 參考資料
Grub 的 GNU Info 使用手冊第 6.1 章 - Simple configuration handling
info:/grub/Simple configuration
