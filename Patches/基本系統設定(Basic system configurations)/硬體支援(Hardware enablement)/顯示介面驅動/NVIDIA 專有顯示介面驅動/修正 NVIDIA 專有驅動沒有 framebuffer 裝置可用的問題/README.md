# 修正 NVIDIA 專有驅動沒有 framebuffer 裝置可用的問題
專有 NVIDIA 驅動不支援 virtual console 用的 framebuffer 裝置，只支援 x86 PC 的 text mode，本修正改用 uvesafb 來實現 framebuffer 裝置支援

## 修正步驟
0. 安裝 v86d 軟體包
	* uvesafb 需要這個軟體在使用者空間運行
1. <del>確定 initramfs 有引入 uvesafb 作業系統核心模組</del>（安裝 v86d 軟體包即會自動引入）  
  `# update-initramfs -uv 2>/dev/null | grep uvesafb`
2. 編輯 /etc/default/grub Grub 開機載入程式設定檔中加上適當地 video Linux 作業系統核心參數
	* `video=uvesafb:mode_option=1280x720-24,mtrr=3,scroll=ywrap`  
	* `video=uvesafb:mtrr=3,scroll=ywrap`  
3. 更新 initramfs 映像檔（好像不需要？）  
`# update-initramfs -u -k all`

## 已知問題<br />Known issues
* 請瀏覽本專案的問題追蹤系統。  
Please browse our project's issue tracker.  
* uvesafb: request region 0x3c0-0x3e0 failed
	* 目前判斷是被編譯入 Linux 作業系統核心的 vesafb 搶走了
	* 但是我這邊的 Ubuntu 14.04 卻是正常的...會不會是只在 VirtualBox 內無效呢？