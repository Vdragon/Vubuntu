# 將 swappiness 降低為 10
## 修正說明
將 vm.swappiness 作業系統核心參數從 60 降低為 10，讓系統較不會將隨機存取記憶體的分頁置換至速度比較慢的置換空間

## 修正方式
將 90-Vubuntu-patch-Lesser-swappiness.conf 檔案以 root 身份安裝到 /etc/sysctl.d/ 目錄底下（擁有者：root、擁有群組：root、Unix 權限設定：0644）
