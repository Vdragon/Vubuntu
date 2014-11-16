# 安裝尚未釋出 Ubuntu 版本的 Linux 作業系統核心
## 修正說明
新版本的 Linux 作業系統核心有機會修正一些硬體問題，提供使用者改用更新版本的選項

## <span style="color: red">警告<br />Warning</span>
* 尚未釋出 Ubuntu 版本的軟體可能會有開發者無法預期的問題，可能造成您的重大損失，**請自行承擔一切風險**
* 本修正的效果僅適用至該 Ubuntu 版本釋出前，釋出之後需自行修改設定檔讓它改用下一個尚未釋出版本
* 該 Ubuntu 釋出版本支援週期結束後請勿再使用該釋出版本的軟體

## 修正方式
### 1. 設定 APT 軟體管理系統的版本釘選(Pinning)，只允許升級 Linux 作業系統核心的軟體包至尚未釋出版本
將 [Prevent-automatic-upgrade-software-to-prerelease-version-except-linux-kernels](Prevent-automatic-upgrade-software-to-prerelease-version-except-linux-kernels) 檔案安裝到 `/etc/apt/preferences.d/` 目錄下（擁有者／群組：root/root、Unix 檔案權限設定 0644）
### 2. 為防萬一，暫時停用 unattended-upgrades
```
# dpkg-reconfigure unattended-upgrades
```
### 3. 新增尚未釋出版本 Ubuntu 的軟體來源
3rd_party_software/APT_Software_Sources_zh_TW/Ubuntu-prerelease.list
### 4. 更新軟體來源快取資料並測試系統升級時會不會將非 Linux 作業系統核心的軟體包升級到尚未釋出版本
### 5. 一切確定符合預期後，重新啟用 unattended-upgrades
```
# dpkg-reconfigure unattended-upgrades
```