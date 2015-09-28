# 修正以 sudo 執行的命令預設會保留呼叫者的 HOME 環境變數的問題(Launchpad Bug #1373495)
## 問題描述
Ubuntu [自己 patch 了 sudo](https://bugs.launchpad.net/ubuntu/+source/sudo/+bug/760140) 讓它預設保留呼叫 sudo 者的 HOME 環境變數（即家目錄），這樣會造成如果以 root 身份執行的軟體會寫入檔案到使用者的家目錄且該檔案先前不存在的話那個被新建立的檔案的擁有者會變成 root 的，下一次改以該使用者身份執行同一個軟體的話就會出問題，另外如果新建立的檔案是 X 伺服器的 Xauthority 檔案的話會造成使用者下一次無法正常登入（登入後瞬間回到登入畫面），這個預設值是不明智且易於造成問題的，ezgo 作為一個面向一般使用者的 GNU/Linux 散佈版本我們應該要先修正掉它免得自找麻煩。

## 重現問題步驟
````
Vdragon % sudo --user=root env | grep ^HOME=
[sudo] password for Vdragon: 
HOME=/home/Vdragon # 應為 /root
Vdragon %
````

## 上游軟體問題報告
[Bug #1373495 “sudo shouldn't preserve HOME environment variable by default” : Bugs : “sudo” package : Ubuntu](https://bugs.launchpad.net/ubuntu/+source/sudo/+bug/1373495)

## 暫時修正方法<br />Workaround
新增一個 `Patch_Launchpad_Bug_1373495_don't_preserve_HOME_environment_variable_by_default` 檔案於 `/etc/sudoers.d` ，內容為：

`````
# Currently Ubuntu hard-coded sudo to preserve HOME environment variable to point to sudo caller's home directory by default(refer Launchpad bug #760140) however this is dangerous and error-prone because the program run by root may write files (e.g. $HOME/.Xauthority , program config files) into the HOME directory **AS ROOT** which, will cause issue when users run the same program as themselves and even make the user failed to login(due to .Xauthority file owner is incorrect)
# Bug #1373495 “sudo shouldn't preserve caller's HOME environment ...” : Bugs : “sudo” package : Ubuntu
# https://bugs.launchpad.net/ubuntu/+source/sudo/+bug/1373495
Defaults always_set_home

`````