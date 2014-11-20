# HTTPS 協定的遠端版本倉庫維持一個小時已驗證狀態
## 修正方式
以 root 身份在終端機內執行
```
# git config --system credential.helper "cache --timeout 3600"
```
