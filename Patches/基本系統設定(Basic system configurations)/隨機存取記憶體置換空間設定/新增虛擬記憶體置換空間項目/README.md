# 新增虛擬記憶體置換空間項目
## 修正方式
以 root 身份編輯 /etc/fstab 設定檔，追加以下內容：
```
# Vubuntu patch : 虛擬記憶體置換空間
# UUID=XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX swap swap defaults 0 0

``` 
