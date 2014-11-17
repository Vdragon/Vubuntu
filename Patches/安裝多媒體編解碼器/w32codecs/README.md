# w32codecs
## 修正方式
1. 於 [http://www.mplayerhq.hu/design7/dload.html](http://www.mplayerhq.hu/design7/dload.html) 下載系統相容的平台的 Binary Codec Packages 並解封裝
2. 安裝解封裝後的目錄內的所有檔案到 `/usr/local/lib/codecs` 目錄底下（擁有者／群組：root/root、Unix 檔案權限設定 0644）（如果目錄原先不存在的話就手動建立）