# 取消 Unity 桌面環境的隱藏式捲動軸，修正觸控螢幕難以點選的問題（有機會被其他預設值 override 掉所以要自己設） 
## 修正步驟
1. 以 root 身份將 `99_vubuntu-disable-overlay-scrollbars.gschema.override` 檔案置於 `/usr/share/glib-2.0/schemas` 目錄中
2. 以 root 身份在終端機中執行 `glib-compile-schemas /usr/share/glib-2.0/schemas/`命令更新 Gsettings 資料庫
3. 登出 X session 再重新登入