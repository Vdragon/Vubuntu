# 加入 Ubuntu 預設 command not found 的功能
## 修正方法
以 root 身份編輯 /etc/zsh/zshrc 設定檔，追加下列內容
```
# Vubuntu patch - 加入 Ubuntu 預設 command not found 的功能
[ -f /etc/zsh_command_not_found ] && . /etc/zsh_command_not_found
```

## 參考資料
[http://unix.stackexchange.com/questions/65505/how-can-i-configure-zsh-to-let-it-explain-to-me-where-i-can-retrieve-an-executab](http://unix.stackexchange.com/questions/65505/how-can-i-configure-zsh-to-let-it-explain-to-me-where-i-can-retrieve-an-executab)