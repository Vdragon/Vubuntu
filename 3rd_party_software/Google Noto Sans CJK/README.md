# Google Noto Sans CJK
由 Google 與 Adobe 等公司開發的高品質中日韓 Sans-serif 字型。

由於來源碼樹內包含大量大容量的二進位字型檔故不會將其包進 Vubuntu 釋出中。

## 官方網站
* [Google Noto Fonts](https://www.google.com/get/noto/cjk.html)
* [專案網站](https://code.google.com/p/noto/)
* [來源碼檔案樹](https://code.google.com/p/noto/source/browse/)
* [議題追蹤系統](https://code.google.com/p/noto/issues/list)

## Git 版本倉庫地址
https://code.google.com/p/noto/

## 安裝方法
1. 下載來源碼樹中的 /third_party/noto_cjk/NotoSansCJK.ttc （Super OTC 字型）
2. 以 root 身份將該檔案安裝到 /usr/local/share/fonts/Google Noto Sans CJK （無該目錄自行建立）底下
3. 以 root 身份於終端機下執行 `fc-cache -v` 命令重新產生 fontconfig 快取資料