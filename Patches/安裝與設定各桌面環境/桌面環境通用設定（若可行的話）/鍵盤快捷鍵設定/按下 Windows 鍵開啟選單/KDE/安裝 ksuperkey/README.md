# 安裝 ksuperkey
## 安裝方式
目前 Ubuntu 軟體來源並沒有提供 ksuperkey 軟體，所以要從來源程式碼建構。

### 1. 以 mk-build-deps 命令建構並安裝 ksuperkey 建構依賴軟體詮釋用軟體包  
```
$ mk-build-deps ksuperkey.control
# gdebi ksuperkey-build-deps_1.0_all.deb
```
#### 已知問題
當當前工作目錄包含空白字元時 mk-build-deps 命令會建構失敗
```
Patches/安裝與設定各桌面環境/桌面環境通用設定（若可行的話）/鍵盤快捷鍵設定/按下 Windows 鍵開啟選單/KDE/安裝 ksuperkey % LANGUAGE=en mk-build-deps ksuperkey.control
cp: target ‘ksuperkey/equivs.cx3DoH’ is not a directory
Error on copy of the template files: exit status 1
Patches/安裝與設定各桌面環境/桌面環境通用設定（若可行的話）/鍵盤快捷鍵設定/按下 Windows 鍵開啟選單/KDE/安裝 ksuperkey %
```
請見下列軟體缺陷報告察看如何解決此問題：  
[Bug #881153 “equiv-build fails with paths with spaces” : Bugs : “equivs” package : Debian](https://bugs.launchpad.net/debian/+source/equivs/+bug/881153)

### 2. 建構 ksuperkey
於 `3rd_party_software/ksuperkey/` 目錄內於終端機執行 make

### 3. 安裝 ksuperkey
於 `3rd_party_software/ksuperkey/` 目錄內於終端機以 root 身份執行 make PREFIX=/usr/local install

### 如何移除 ksuperkey
於 `3rd_party_software/ksuperkey/` 目錄內於終端機以 root 身份執行 make PREFIX=/usr/local uninstall

## 參考資料
* [Debian Policy Manual - Control files and their fields](https://www.debian.org/doc/debian-policy/ch-controlfields.html)
* [hanschen/ksuperkey](https://github.com/hanschen/ksuperkey)