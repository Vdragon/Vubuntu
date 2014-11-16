#  客製 EXTRA_GROUPS 自訂一般使用者應要加入哪些群組
## 客製原則
在不影響系統安全性前提下給予使用者方便的權限
## 參考資料
* https://wiki.ubuntu.com/Security/Privileges
* /etc/dbus-1/system.d/
## 設定項目
### 應該有的群組
#### dialout
serial 裝置(/dev/ttyS*)存取

#### adm
部份系統紀錄檔存取

#### lpadmin
CUPS 印表機管理

#### dip
建立 PPP(oE) 連線（似乎 Network Manager 已經可以自己弄了？）

#### video
* framebuffer 裝置直接存取
* 用於 fbterm

#### plugdev
外接裝置存取

#### fuse
存取 fuse 檔案系統

#### users
看樣子是一般使用者都在這個群組內

#### sambashare
存取 /var/lib/samba/usershares ，讓使用者能透過分享資料

### 不應該有的群組
#### audio
直接存取音效裝置（目前 Ubuntu 的設定是只有 pulseaudio 使用者應在此群組中）

####  sudo/admin
* sudo 存取等
* admin 群組已經不建議使用

#### disk
磁碟區塊裝置直接讀寫（代表 lsblk、blkid 可以取得所有資訊（太危險了這個不要，還是改為用 sudo 才能取得好了））

#### netdev
目前看不出哪個不在 Network Manager 的管理範圍

#### bluetooth
藍牙裝置管理

#### tape
磁帶機存取

#### vboxusers 
VirtualBox 存取主機端 USB 裝置需要 ，安裝的時候再決定誰可以用

#### bumblebee
存取 bumblebee，安裝的時候才加入可以存取的人

## 修正方式
以 root 身份編輯 /etc/adduser.conf 設定檔，將 [adduser.conf.Vubuntu_patch.客製 EXTRA_GROUPS 自訂有管理權限的使用者應要加入哪些群組](adduser.conf.Vubuntu_patch.客製 EXTRA_GROUPS 自訂有管理權限的使用者應要加入哪些群組)修改的設定寫進去