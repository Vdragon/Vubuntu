#  修正以 root 身份執行的程式無法使用中文輸入法的問題
## 上游軟體問題報告
Bug #1373521 “Environment variables used by input methods should...” : Bugs : “sudo” package : Ubuntu
https://bugs.launchpad.net/ubuntu/+source/sudo/+bug/1373521

## 修正方式
於 /etc/sudoers.d 目錄建立存取權限設定為 `r--r-----`(0440) 的「Preserve_input_method_required_environmental_variables」檔案，內容為：
````
# 保留輸入法框架需要的環境變數，使得以其他使用者身份執行的圖形介面軟體能夠正常使用（中文）輸入法
Defaults	env_keep += "XMODIFIERS"
Defaults	env_keep += "GTK_IM_MODULE"
Defaults	env_keep += "QT_IM_MODULE"
Defaults	env_keep += "QT4_IM_MODULE"
Defaults	env_keep += "CLUTTER_IM_MODULE"

````

## 參考資料
* visudo(8) manpage 使用手冊