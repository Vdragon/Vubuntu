#  設定全自動於幕後升級系統
## 修正方式
以 root 身份編輯 `/etc/apt/apt.conf.d/50unattended-upgrades` 設定檔，將 `Unattended-Upgrade::Allowed-Origins` 區塊的內容全部註解掉（該區塊已被 `Unattended-Upgrade::Origins-Pattern` 取代），如果不存在的話手動新增 `Unattended-Upgrade::Origins-Pattern` 區塊如下：

```
Unattended-Upgrade::Origins-Pattern {

};
```
根據 [file:///usr/share/doc/unattended-upgrades/README.md](file:///usr/share/doc/unattended-upgrades/README.md) 說明文件的說明進行設定。

### 允許自動升級 Ubuntu 預設的軟體來源的軟體
[50unattended-upgrades.Vubuntu.patch.允許自動升級 Ubuntu 預設的軟體來源的軟體](50unattended-upgrades.Vubuntu.patch.允許自動升級 Ubuntu 預設的軟體來源的軟體)

### 允許自動升級 Google 的軟體
[50unattended-upgrades.Vubuntu.patch.允許自動升級 Google 的軟體](50unattended-upgrades.Vubuntu.patch.允許自動升級 Google 的軟體)

### 允許自動升級 debian.luna.com.tw 的軟體
[50unattended-upgrades.Vubuntu.patch.允許自動升級 debian.luna.com.tw 的軟體](50unattended-upgrades.Vubuntu.patch.允許自動升級 debian.luna.com.tw 的軟體)

### 允許自動升級 deb-multimedia.org 的軟體
[50unattended-upgrades.Vubuntu.patch.允許自動升級 deb-multimedia.org 的軟體](50unattended-upgrades.Vubuntu.patch.允許自動升級 deb-multimedia.org 的軟體)

### 允許自動升級 Canonical PPA 服務的軟體
[50unattended-upgrades.Vubuntu.patch.允許自動升級 Canonical PPA 服務的軟體](50unattended-upgrades.Vubuntu.patch.允許自動升級 Canonical PPA 服務的軟體)
