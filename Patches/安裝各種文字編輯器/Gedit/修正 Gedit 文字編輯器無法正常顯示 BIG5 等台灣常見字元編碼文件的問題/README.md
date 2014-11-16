# 修正 Gedit 文字編輯器無法正常顯示 BIG5 等台灣常見字元編碼文件的問題
## 修正步驟
1. 以 root 身份將 `99_vubuntu-patch-gedit-support-more-encodings-detection.gschema.override` 檔案置於 `/usr/share/glib-2.0/schemas` 目錄中
2. 以 root 身份在終端機中執行 `glib-compile-schemas /usr/share/glib-2.0/schemas/`命令更新 Gsettings 資料庫
3. 登出 X session 再重新登入