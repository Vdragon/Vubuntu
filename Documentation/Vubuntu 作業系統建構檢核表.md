# Vubuntu 作業系統建構檢核表

## 本作品的智慧財產授權條款<br />Intellectual property license applied to this work
除了另外聲明之內容以外，本作品之內容採用「創用 CC-<span class="important_warning" style="color: red">**BY**</span>-<span class="important_warning" style="color: red">**SA**</span> 3.0 台灣地區版本或其後版本」授權條款釋出供所有人使用。  
![「創用 CC-BY-SA 3.0 台灣地區版本或其後版本」授權條款圖示](https://cdn.rawgit.com/Vdragon/Vdragon_s_License_Templates/217eea4d6e13a5f72eddf1f1a3b22dbdee9e9639/Creative%20Commons/CC%20BY-SA/Resources/Creative%20Commons%20CC-BY-SA%20logo.svg)

於下列條件的<span class="important_warning" style="color: red">**限制**</span>下您可以自由使用本作品之內容於任何用途：

* 姓名標示  
  <span class="important_warning" style="color: red">**BY**</span> as known as Attribution
	* 您必須**以本作品指定的方式**明確地標註本作品創作者的名稱「Ｖ字龍 &lt;<Vdragon.Taiwan@gmail.com>&gt;」於本作品之任何衍伸作品中（且不得以任何方式暗示本作品為您或您使用本作品的方式背書）。
* 相同方式分享  
  <span class="important_warning" style="color: red">**S**</span>hared <span class="important_warning" style="color: red">**A**</span>like
	* 本作品之衍伸作品必須以本作品採用之授權條款或是與其相容的授權條款釋出（如果您不知道那種授權條款相容本作品之授權條款，請用本作品之授權條款釋出）
* 您必須明確標註衍伸作品中屬於本作品之內容所採用的授權條款。

如您不確定您的使用方式是否違反授權條款，敬請參閱：

* Creative Commons — 姓名標示-相同方式分享 3.0 台灣 — CC BY-SA 3.0  
  <http://creativecommons.org/licenses/by-sa/3.0/tw/>

本作品同時仍於「合理使用(fair use)」之有限範圍下使用其他資源，將於可行範圍內另外註明其著作權擁有者(copyright holder)與其授權條款，如需了解如何使用該類資源敬請參閱：

* 合理使用 - 維基百科，自由的百科全書  
  <http://zh.wikipedia.org/wiki/合理使用>
  
如果有任何需求，敬請不吝來信洽詢

* 國立台灣海洋大學網路發展協會　Ｖ字龍  
  &lt;<Vdragon.Taiwan@gmail.com>&gt;

感謝您的配合，並祝您使用愉快！

## 系統建構環境設定
### Oracle VirtualBox 虛擬機器參考設定
#### 通用設定
* 基本
	* 作業系統類型
		* Linux
	* 作業系統版本
		* Ubuntu(64 bit)
* 進階
	* 共用剪貼簿
		* 主機到客體
	* 檔案拖曳
		* 主機到客體
		
#### 系統
* 主機板
	* 隨機存取記憶體大小
		* 越大越好
	* 開機順序
		1. 光碟
		2. 硬碟
	* 指標裝置
		* USB 多點觸控版
	* 延伸功能
		* 啟用 I/O APIC
		* 硬體時鐘以 UTC 時間不勾選
* 中央處理器
	* 處理器數目
		* 愈多愈好
	* 執行上限
		* 愈多愈好
	* 延伸功能
		* 啟用 PAE/NX
	* 硬體加速
		* 硬體虛擬化技術
			* 啟用 VT-x/AMD-V
			* 啟用 Nested Paging
			
#### 顯示
* 視訊記憶體
	* 越大越好
* 延伸功能
	* 啟用 3D 加速

#### 存放裝置
* 存放裝置樹
	* 控制器：SATA
		* 光碟機

#### 網路
* 介面卡1
	* 附加到
		* 橋接介面卡
	* 進階
		* 介面卡類型
			* 半虛擬化網路 (virtio-net)
		* 混合模式
			* 只允許 VM 直接存取網路介面

#### USB
* 啟用 USB 控制器
* 啟用 USB 2.0 (EHCI) 控制器

## 安裝作業系統<br />Operating System Installation
* [ ] 作業系統安裝媒體以 Minimal CD 為優先，所有軟體皆直接自網路上下載
* [ ] 無 Minimal CD 可用時則用一般安裝模式安裝，先更新完安裝程式後停用網路再繼續安裝（這樣比較快、安裝完後再升級系統跟安裝語言軟體包就好了）

## 基本系統設定<br />Basic system configurations
* [ ] 自訂主機名稱  
  Customize hostname
	* 設定說明
		* 主機名稱為該系統在網路（比方說網路上的芳鄰(Samba)服務）上的識別用名稱，在格式上有一些限制
	* 設定方式
		1. 編輯 /etc/hostname 跟 /etc/hosts 檔案，將主機名稱替換為你要換的。
		2. 重新啟動系統。
	* 設定值
		* Unnamed-PC
			* 表示「尚未命名的個人電腦」
* [ ] 鍵盤按鍵映射配置  
  Keyboard key mapping configuration
	* 設定說明
		* 鍵盤按鍵映射配置為系統辨識鍵盤所傳送的按鍵訊號究竟代表哪個按鍵的設定，不同的國家／地區使用的鍵盤印字可能不一樣，所以設定也會不一樣，台灣的鍵盤雖然有其他印字但是基本上是英語（美國地區）鍵盤。
		* <span style="color: red">**注意：**</span>Ubuntu 會預設使用「漢語」這個鍵盤配置，目前無研究兩者配置有什麼不同。
	* 設定方式
		* `# dpkg-reconfigure keyboard-configuration`
	* 設定值
		* 英語（美國地區）鍵盤
* 根目錄檔案系統相關設定<br />Root file system related settings
	* [ ] 設定根目錄檔案系統標籤為「V + 原散佈版本名稱」
		* 設定方法
			* tune2fs
	* 檔案系統掛載選項
		* 說明
			* 檔案系統掛載選項決定檔案系統的某些屬性或是要啟用／停用的功能，設定檔位於 /etc/fstab 與 /etc/fstab.d
		* [ ] noatime  
		  不更新檔案的存取時間(access time)
			* 理由
				* 減少磁碟寫入量，目前無已知重要軟體會依賴該資料
		* [ ] nodiratime
		  不更新目錄的存取時間
			* 理由
				* 減少磁碟寫入量，目前無已知重要軟體會依賴該資料
		* [ ] usrquota  
		啟用使用者磁碟使用配額管理功能
			* 理由
				* 增加功能，無已知啟用問題
		* [ ] grpquota
		  啟用群組磁碟使用配額管理功能
			* 理由
				* 增加功能，無已知啟用問題
		* [ ] user_xattr
		  支援檔案擴充屬性設定
			* 理由
				* 增加功能，無已知啟用問題
		* [ ] 檔案系統保留空間設為 0%
			* 理由
				* 在大容量磁碟上會浪費空間，應由使用者自行在安裝後設定適當值
* 主記憶體分頁置換空間設定  
  Primary memory page swap space settings
	* [ ] 於 fstab 新增置換空間的項目範本
		* Patches/基本系統設定(Basic system configurations)/檔案系統相關設定(File system related settings)/新增虛擬記憶體置換空間項目/
	* [ ] 將 swappiness 降低為 10
	* [ ] 安裝 Swap_space_automounter
		* 3rd_party_software/Swap_space_automounter/
* 語言設定  
  Locale settings
	* [ ] 設定預設系統語系為正體中文(LANG=zh_TW.UTF-8)
		* 設定方式
			* 編輯 /etc/default/locale 檔案
		* 設定值
			* LANG=zh_TW.UTF-8
	* [ ] 設定介面語言優先順序為正體中文（台灣→香港）→其他中文→英文
		* 設定方式
			* 編輯 /etc/default/locale 檔案
		* 設定值
			* LANGUAGE=zh_TW:zh_HK:zh:en
	* [ ] 定期執行 check-language-support 安裝中文語言軟體包
		* `# apt-get install $(check-language-support --language=zh)`
	* [ ] 安裝 manpages-zh中文 manpage 軟體包
* TTY 終端機中文支援
	1. 安裝軟體
		* [ ] fbterm
		* [ ] fbterm-ucimf
		* [ ] ucimf-chewing
		* [ ] fbset
			* 調整 framebuffer 裝置解析度等設定
	2. 設定
		1. [ ] `# setcap 'cap_sys_tty_config+ep' $(which fbterm)`
			* 目前不明原因需要重複執行此命令才會生效
		2. [ ] `# setcap 'cap_sys_admin+ep' $(which fbterm)`
		3. [ ] 編輯 /etc/adduser.conf 將 video 群組加入 EXTRA_GROUPS 變數中（如果沒有的話）
		4. [ ] 編輯 ~/.fbtermrc 將字型改為 Droid Sans Fallback 16
		5. [ ] 編輯 ~/.fbtermrc 將輸入法程式設定為 fbterm-ucimf
		6. [ ] 將 ~/.fbtermrc 同步到 /root 跟 /etc/skel
		7. [ ] Patches/語言設定(Locale settings)/TTY 終端機中文支援/修正「安裝了 ucimf-chewing 但是新酷音輸入法還是叫不出來」的問題/
		8. [ ] Patches/語言設定(Locale settings)/TTY 終端機中文支援/將 TTY1 的 getty 改為 fbterm/

* 軟體管理系統設定
  Software Management System Settings
	* [ ] 使用 <http://free.nchc.org.tw/ubuntu> Ubuntu 軟體來源鏡像站（速度快，相對預設的 tw.archive.ubuntu.com 穩定）
	* 其他內建軟體來源
		* [ ] 啟用 Canonical 公司的合作伙伴(partner)軟體來源
		* [ ] 安裝 extras 軟體來源的軟體包驗證用公鑰（ubuntu-extras-keyring 軟體包）、啟用 extras 軟體來源
	* [ ] 設定全自動於幕後升級系統（Patches/基本系統設定(Basic system configurations)/軟體管理系統(Software management system)/設定全自動於幕後升級系統）
		* [ ] 預設不啟用來源碼軟體包的軟體來源（新增軟體來源後需手動取消）
		* [ ] 發現軟體更新時立刻顯示
		* [ ] 新長期散佈版本釋出時才通知升級
		* [ ] 自動提交統計資訊  
	  Ubuntu 14.04 找不到設定介面
* 使用者管理設定  
  User management settings
	* system_admin 預設系統管理員帳號
		* [ ] 名稱：系統管理員
	* `sudo` 身份切換機制
		* [ ] 提前修正 sudo 沒有預設將 HOME 環境變數設為目標使用者家目錄的問題
			* <https://gitcafe.com/ezgo/ezgo12/tickets/45>
		* [ ] 修正以其他身份執行的圖形化介面軟體無法使用中文輸入法的問題
			* <https://gitcafe.com/ezgo/ezgo12/tickets/37>
		* 安裝各圖形介面的 sudo 前端
			* [ ] gksu
			* [ ] kdesu
	* `adduser` 命令
		* [ ] 提前修正 adduser 設定檔 NAME_REGEX 預設值不合理的問題
			* Patches/基本系統設定(Basic system configurations)/使用者管理(User management)/adduser/提前修正 adduser 設定檔 NAME_REGEX 預設值不合理的問題/
		* [ ] 鬆綁 adduser 對含英文大寫字母之使用者名稱的限制
			* Patches/基本系統設定(Basic system configurations)/使用者管理(User management)/adduser/鬆綁 adduser 對含英文大寫字母之使用者名稱的限制/
		* [ ] 客製 EXTRA_GROUPS 自訂一般使用者應要加入哪些群組
			* Patches/基本系統設定(Basic system configurations)/使用者管理(User management)/adduser/客製 EXTRA_GROUPS 自訂一般使用者應要加入哪些群組/
		* [ ] 設定 adduser 建立一般使用者時自動將其加進 EXTRA_GROUPS 列出的群組中
			* Patches/基本系統設定(Basic system configurations)/使用者管理(User management)/adduser/客製 EXTRA_GROUPS 自訂一般使用者應要加入哪些群組/
* 電源管理  
  Power management
	* [ ] 啟用休眠
		* Patches/基本系統設定(Basic system configurations)/電源管理(Power management)/啟用休眠/
	* [ ] 安裝並啟用 TLP
		* 軟體來源
			* 3rd_party_software/APT_Software_Sources_zh_TW/TLP-official.list
		* 要安裝的軟體包
			* tlp
				* tlp-rdw
* 硬體支援  
  Hardware enablement
	* 虛擬機器客戶端系統支援驅動  
	  Virtual machine guest operating system support driver
		* 安裝 VirtualBox Guest Additions
			* 安裝軟體包
				* [ ] virtualbox-guest-dkms
					* Linux 作業系統核心驅動模組
				* [ ] virtualbox-guest-utils
					* 非圖形介面相關工具
				* [ ] virtualbox-guest-x11
					* 圖形介面相關工具
		* 安裝 VMware Open VM Tools
			* 安裝軟體包
				* <del>[x] open-vm-tools-dkms</del>
					* Linux 作業系統核心驅動模組（已經進了 Linux 作業系統核心來源程式碼樹因此不用裝）
				* [ ] open-vm-tools
					* 非圖形介面相關工具
				* [ ] open-vm-tools-desktop
					* 圖形介面相關工具
	* 顯示介面驅動
		* NVIDIA 專有顯示介面驅動
			* 安裝軟體包
				* [ ] nvidia-〈最新分支編號〉-updates
		* 安裝 Bumblebee NVIDIA Optimus 支援
			1. [ ] 設定軟體來源
				* 3rd_party_software/APT_Software_Sources_zh_TW/Bumblebee-official-stable.list
			2. [ ] 更新軟體來源快取資料
			3. [ ] 安裝軟體
				* <https://wiki.ubuntu.com/Bumblebee#Installation>
			4. [ ] 設定系統
				* 設定 /etc/adduser.conf 將 bumblebee 群組加入 EXTRA_GROUPS中
		* 安裝 Intel Graphics Installer for Linux
			* <https://01.org/linuxgraphics/>
			* <http://www.webupd8.org/2013/04/how-to-use-intel-linux-graphics-drivers.html>
			1. [ ] 設定軟體來源
				* APT_Software_Sources_zh_TW/intellinuxgraphics.list
			2. [ ] 更新軟體來源快取資料
			3. [ ] 升級系統
		* 安裝 Oibaf 維護的新版本開放來源程式碼顯示介面驅動（理由？）
			1. [ ] 設定軟體來源
				* 3rd_party_software/APT_Software_Sources_zh_TW/Updated-and-Optimized-Open-Graphics-Drivers-unofficial-by-Oibaf.list
			2. [ ] 更新軟體來源快取資料
			3. [ ] 系統更新
	* 印表機驅動
		* HP 印表機支援
			1. 安裝軟體
				* [ ] hplip-gui
				* [ ] hplip-ppds
			2. [ ] 預設停用 HP 常駐系統匣圖示啟動
				* 編輯 /etc/xdg/autostart/hplip-systray.desktop freedesktop.org 桌面項目設定檔，加入 Hidden key 其值為 true（`Hidden=true`）
		* 其他印表機支援
			* 安裝軟體
				* [ ] printer-driver-all
	* 驅動需要載入到硬體中的硬體軔體資料
		* 安裝軟體
			* [ ] linux-firmware
			* [ ] linux-firmware-nonfree
			* [ ] prism2-usb-firmware-installer 
			* [ ] firmware-crystalhd
			* [ ] firmware-b43-installer
			* [ ] firmware-b43legacy-installer
			* [ ] dahdi-firmware-nonfree
			* [ ] midisport-firmware
	* CPU microcode 更新資料
		* 安裝軟體
			* intel
				* [ ] intel-microcode
			* AMD
				* [ ] amd64-microcode
	* 智慧卡讀卡機支援
		* [ ] pcscd
		* [ ] pcsc-tools
			* 提供 pcsc_scan 工具
		* pcsc drivers
			* [ ] libccid
			* [ ] libgempc430
			* [ ] '^libasedrive-.*'
			* [ ] libacr38u
			* [ ] libgempc410
			* [ ] libacsccid1
			* [ ] libtowitoko2
	* [ ] 建立 Vubuntu 專屬軟體目錄於系統管理員帳號桌面中
* X 圖形伺服器
	* 安裝 [X updates 軟體來源](https://launchpad.net/~ubuntu-x-swat/+archive/x-updates)
		* 3rd_party_software/APT_Software_Sources_zh_TW/X-Updates-official-release.list
	* 檢查 X 的顯示介面裝置驅動有沒有安裝，沒有的話安裝它，修正 X 紀錄檔中無法載入的問題
		* [ ] xserver-xorg-video-all

## 安裝與設定各桌面環境<br />Install and confugure each desktop environment
### 桌面環境通用設定（若可行的話）
#### 鍵盤快捷鍵設定
##### 按下 Windows + ←→ 鍵視窗左右半畫面鋪排、Windows + ↑↓鍵視窗最大化／最小化、按下 Windows + D 鍵顯示桌面
* KDE 系統設定
	* 捷徑與手勢
		* 全域鍵盤捷徑
			* Kwin 視窗管理員
				* [ ] 視窗左右半螢幕畫面鋪排
				* [ ] 視窗最大化、縮小
* XFCE 設定值管理員
* Unity 桌面環境
	* Unity 系統設定值
		* 鍵盤
			* 捷徑鍵
				* 何種視窗
					* 最大化視窗
						* [ ] Super+Up
					* 最小化視窗
						* [ ] Super+Down
					* 導覽
						* 隱藏所有一般視窗
							* [ ] Super+D
	* CompizConfigSettingsManager(ccsm)
		* 視窗管理
			* Grid
				* Left Maximize
					* <Super>+Left
				* Right Maximize
					* <Super>+Right
* 基於 Openbox 的桌面環境
	* https://github.com/Vdragon/Aero_Snap
	* 安裝 obkey Openbox 視窗管理員鍵盤快速鍵編輯軟體
		* <http://code.google.com/p/obkey/>
		* <http://github.com/nsf/obkey>

##### 按下 Windows + F(ullscreen) 鍵將視窗全螢幕化（目前僅適用 KDE）
##### 按下 Windows 鍵開啟選單
* KDE 桌面環境
	* 安裝 ksuperkey

##### 按下 Ctrl + Alt + T 啟動終端機模擬軟體
##### Shutter 進行螢幕截圖
* KDE
	* Resources/Shutter 螢幕截圖工具按鍵組合設定.khotkeys
* Unity/GNOME/Cinnamon
	* Cinnamon 不能直接修改，用 gnome-control-center keyboard 就能修改

### 桌面背景圖案
#### 安裝桌面背景圖案
##### 設定
* 所有桌面環境
	* [ ] KDE 預設桌面背景圖案
* 其他桌面環境
	* 桌面環境預設桌面背景圖案
* Ubuntu
	* Ubuntu 吉祥物桌面背景圖案（Ubuntu 14.04 似乎不再內建吉祥物桌布了orz）

### 預設釘選軟體（不移除預設推荐項目，只加入需要的）
#### 各 Web 瀏覽器
* Google Chrome
* Mozilla Firefox
* Opera

#### Manpage/README/Infopage 閱讀器
* Konqueror

#### 軟體管理軟體
* 各種軟體商店
* 各種軟體包管理前端程式
* 軟體來源

#### Konsole
#### Git Cola

### 介面文字字型
* 非等寬字型
	* [ ] Noto Sans（台灣）字型
* 等寬字型
	* [ ] Droid Sans Mono

### K 桌面環境<br />KDE
1. [ ] 安裝軟體來源
	* 3rd_party_software/APT_Software_Sources_zh_TW/Kubuntu-Backports-official.list
2. 安裝軟體
	* [ ] kubuntu-desktop
	* [ ] '^kde-config-[a-z]*$'
	* [ ] xsettings-kde
	* [ ] '^gtk.*-engines-.*$'
	* [ ] kscreensaver-xsavers
	* [ ] xscreensaver-gl
	* [ ] xscreensaver-gl-extra
	* [ ] '^xscreensaver-screensaver-[a-z0-9]*'
	* [ ] kdeartwork
	* [ ] kde-plasma-netbook
	* [ ] plasma-mediacenter
	* [ ] colord-kde
	* 預覽圖產生器
		* [ ] kdegraphics-thumbnailers
		* [ ] ffmpegthumbs
	* 語言支援
		* [ ] kde-l10n-zhtw
		* [ ] kde-l10n-zhcn
	* [ ] kdesdk-dolphin-plugins
	* KIO
		* [ ] kio（utopic 之後才有）
		* [ ] kdesdk-kio-plugins
			* 取代kdesvn-kio-plugins
		* [ ] kio-gopher 
			* 不知道還有沒有裝這個的理由
3. 設定
	* Plasma 桌面
		* [ ] 安裝默認壁紙(kde-wallpapers)
		* [ ] 新增「類比時鐘」小工具
		* [ ] 佈局改為「預設桌面」
		* [ ] 新增「資料夾」小工具
			* 位置
				* [ ] 顯示桌面資料夾
				* [ ] 標題：預設
		* 「系統匣」設定
			* 顯示
				* [ ] 啟用全部額外項目
			* 項目
				* 隱藏
					* [ ] Klipper
					* [ ] 鍵盤配置
					* [ ] 貼上
					* [ ] 繪圖板裝置設定
	* Dolphin 檔案管理軟體
		* [ ] 開啟「顯示工具列」設定
		* 檢視(V)
			* [ ] 啟用「預覽」
			* 排序依據
				* [ ] 取消「資料夾優先」
			* 面板
			* [ ] 啟用「地方」、「資訊」、「終端機」面板
			* [ ] 解除鎖定面板
		* [ ] 將「資訊面板」置於左側「地方」面板下方
		* 工具列排列
			* [ ] 不鎖定工具列位置
		* 設定工具列
			1. 回到上一個目錄
			2. 至上一層目錄
			3. 回到下一個目錄
			4. 分隔線
			5. 開啟新的分頁
			6. 開啟新的視窗
			7. 分隔線
			8. 圖示檢視模式
			9. 簡潔檢視模式
			10. 詳細檢視模式
			11. 分隔線
			12. 尋找
			13. 預覽
			14. 分割
			15. 顯示隱藏檔案（變更圖示：zoom-select）
		* 設定(S)
			* 設定 Dolphin
				* 導覽
					* [ ] 方式設定為雙點開啟項目
				* 一般
					* 行為
						* [ ] 所有的資料夾共用檢視設定
						* [ ] 顯示工作提示
					* 預覽
						1. 安裝所有格式預覽工具
							* 開啟「KDE 軟體集」過濾器搜尋 thumbnail 關鍵字
						2. 啟用所有類型檔案預覽
					* 狀態列
						* [ ] 啟用「顯示空間資訊」
	* KDE 系統設定
		* 預設應用程式
			* 檔案管理員
				* 預設元件
					* [ ] Dolphin
			* Web 瀏覽器
				* 預設元件
					* [ ] 於基於此網址內容的應用程式
		* 檔案關聯
			* search “html”
				* [ ] application/xhtml+xml
					* 應用程式優先順序
						1. Firefox
						2. 其他 Web 瀏覽器
						3. 其他
				* [ ] text/html
					* 應用程式優先順序
						1. Firefox
						2. 其他 Web 瀏覽器
						3. 其他
		* 工作空間外觀與行為
			* 視窗裝飾
				* [ ] Plastik
					* [ ] 視窗標題列移除「在所有桌面」按鈕
			* 桌面主題
				* [ ] Oxygen
			* 游標主題
				* [ ] Oxygen Blue
		* 帳號詳細資料
			* 密碼與帳號資訊
			* 將使用者名稱改為「系統管理員」
		* 應用程式外觀
			* 字型
				* [ ] 強制指定字型 DPI 設定為 144
		* 啟動與關閉
			* 工作階段管理程式
				* 正在登入
					* [ ] 使用空白的工作階段來啟動(S)
	* Konsole 終端機模擬軟體
		* [ ] 預設設定檔更名為「Vubuntu 預設 Konsole 設定」
			* [ ] 顏色配置使用「黑底綠字」
			* [ ] 字型使用「Droid Sans Mono 12」
		* [ ] PTT 瀏覽用設定檔
			* [ ] 顏色配置「黑底白字」
			* [ ] 終端機大小 80x24
			* [ ] 字型使用「Droid Sans Mono 12」
	* 螢幕保護程式
		* [ ] ASCII 水族箱
	* 工作列
		* [ ] 將「工作管理員」改為「只有圖示的工作管理員」
		* [ ] 預設取消虛擬桌面 widget 啟用顯示桌面 widget（置於「活動」小工具右側）
		* 將時鐘改為
			* [ ] 短日期
			* [ ] 顯示秒
			* [ ] 取消 UTC 時間顯示

### XFCE(Xubuntu) 桌面環境
1. 安裝軟體
	* [ ] 安裝 xubuntu-desktop 軟體包
	* [ ] 移除 default settings 軟體包
	* [ ] 安裝 xfce4-goodies 軟體包
2. 設定

### LXDE(Lubuntu) 桌面環境
1. 安裝軟體
	* [ ] lxde

### GNOME 3(Ubuntu GNOME) 桌面環境
1. 安裝軟體來源
	* 3rd_party_software/APT_Software_Sources_zh_TW/gnome-3-official.list
2. 更新軟體來源快取資料
3. 安裝軟體
	* [ ] ubuntu-gnome-desktop
	* [ ] 移除 default settings 軟體包
	* [ ] gnome-boxes
	* [ ] gnome-documents
	* [ ] gnome-shell-timer
	* [ ] gnome-shell-extensions
	* 預覽圖產生器
		* [ ] gnome-.*-thumbnailer
		* [ ] ooo-thumbnailer

### Openbox 桌面環境
1. 安裝軟體
	* [ ] openbox
	* 支援右鍵 Debian 選單
		* [ ] menu
		* [ ] menu-l10n

### MATE(GNOME 2) 桌面環境
1. 安裝軟體來源
	* [ ] <http://wiki.mate-desktop.org/download>
2. 更新軟體來源快取資料
3. 安裝軟體
	* [ ] mate-core
	* [ ] mate-desktop-environment

### Cinnamon 桌面環境
1. 安裝軟體來源
	* [ ] [Cinnamon stable : Gwendal LE BIHAN](https://launchpad.net/~gwendal-lebihan-dev/+archive/cinnamon-stable)
2. 更新軟體來源快取資料
3. 安裝軟體
	* [ ] cinnamon
	* [ ] ^nemo-*

### Unity 桌面環境
* 安裝軟體
	* [ ] ubuntu-desktop
* [ ] 重設軟體圖示主題
* [ ] 將所有軟體圖示皆列入 Unity 桌面環境面板(panel)的白名單（13.XX 之後已經無效）
	* 用 dconf 編輯器編輯 com.canonical.Unity.Panel.systray-whitelist 改為 ‘all’
* [ ] 取消 Unity 桌面環境的隱藏式捲動軸，修正觸控螢幕難以點選的問題（有機會被其他預設值 override 掉所以要自己設）
	* Patches/取消 Unity 桌面環境的隱藏式捲動軸，修正觸控螢幕難以點選的問題（有機會被其他預設值 override 掉所以要自己設）/

### Enlightenment 桌面環境
* 安裝軟體
	* [ ] e17

## 安裝及設定各種軟體管理前端程式
* [ ] Muon
* [ ] Muon Discover
* Synaptic
	1. [ ] 安裝軟體
	2. [ ] 新增「沒有軟體來源的軟體包」過濾器
* [ ] Ubuntu 軟體中心
* [ ] Aptitude
* [ ] Gdebi(GNOME/KDE)
* [ ] ppa-purge
* y-ppa-manager
	1. 安裝軟體來源
		* [ ] APT_Software_Sources_zh_TW/Y-PPA-Manager-official-release.list
	2. 安裝軟體
		* [ ] y-ppa-manager

## 安裝多媒體編解碼器
* [ ] ^.*ubuntu-restricted-extras$
* [ ] ^gstreamer.*-plugins-good$
* [ ] ^gstreamer.*-plugins-ugly$
* [ ] ^gstreamer.*-plugins-bad$
* [ ] w32codecs
	* Patches/安裝多媒體編解碼器/w32codecs/

## 安裝 DVD CSS 保護機制支援
1. [ ] 安裝軟體來源
2. [ ] 更新軟體來源快取資料
3. [ ] 安裝軟體包
	* libdvdcss2

## 安裝及設定各種 alternatives 圖形化介面前端程式
* [ ] kalternatives
* [ ] galternatives

## 安裝軟體開發工具
### 版本控制系統
#### Git
1. 安裝軟體
	* 核心元件
		* [ ] 安裝 git 軟體包
	* 文件
		* [ ] git-doc
	* 圖形介面
		* [ ] git-gui
		* gitk revision tree visualizer
			* [ ] gitk
		* [ ] git-cola（改用手動建構安裝）
2. 設定
	* [ ] Patches/安裝軟體開發工具/版本控制系統/Git/修正中文字元無法正常在 git 畫面中顯示的問題/
	* [ ] Patches/安裝軟體開發工具/版本控制系統/Git/HTTPS 協定的遠端版本倉庫維持一個小時已驗證狀態

### 整合式開發環境<br />IDE

## 安裝其他檔案系統支援
### exFAT 檔案系統
* [ ] fuse-exfat