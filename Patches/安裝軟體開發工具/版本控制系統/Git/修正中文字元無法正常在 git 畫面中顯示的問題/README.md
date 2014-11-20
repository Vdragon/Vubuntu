#  修正中文字元無法正常在 git 畫面中顯示的問題
## 修正方式
以 root 身份在終端機中執行下列命令：
```
git config --system core.quotepath false
```
