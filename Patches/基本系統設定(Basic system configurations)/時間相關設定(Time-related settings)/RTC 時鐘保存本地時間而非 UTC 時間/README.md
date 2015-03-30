# RTC 時鐘保存本地時間而非 UTC 時間
## 理由
避免造成同硬體的其他作業系統 Windows 時間不正確

## 設定方式
1. 以 root 身份編輯 /etc/default/rcS 設定檔，將「UTC=no」項目取消註解

## 已知問題<br />Known issues
請瀏覽本專案的問題追蹤系統。  
Please browse our project's issue tracker.  