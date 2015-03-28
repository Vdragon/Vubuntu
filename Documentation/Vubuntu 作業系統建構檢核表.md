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
	* Ubuntu 軟體來源鏡像站(mirror site)
		* <http://free.nchc.org.tw/ubuntu>

## 基本系統設定<br />Basic system configurations
* [ ] 自訂主機名稱<br />Customize hostname
	* 設定說明
		* 主機名稱為該系統在網路（比方說網路上的芳鄰(Samba)服務）上的識別用名稱，在格式上有一些限制
	* 設定方式
		1. 編輯 /etc/hostname 跟 /etc/hosts 檔案，將主機名稱替換為你要換的。
		2. 重新啟動系統。
	* 設定值
		* Unnamed-PC
			* 表示「尚未命名的個人電腦」

