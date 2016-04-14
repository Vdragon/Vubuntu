# 修正「安裝了 ucimf-chewing 但是新酷音輸入法還是叫不出來」的問題
## 適用範圍
* 16.04 已不再適用
* 14.04LTS

## 修正方式
以 root 身份將 `/usr/lib/ucimf/` 目錄下「chewing」開頭的檔案符號式連結到 `/usr/lib/〈硬體平台名稱〉/ucimf/` 目錄底下
