#!/bin/bash

if [ "$(basename "$(pwd)")" != "安裝正體中文翻譯資料" ]
	then
	printf "請將當前工作目錄切換到 Patches/安裝軟體開發工具/整合式開發環境(IDE)/Code::Blocks/安裝正體中文翻譯資料/ 底下再執行此程式\n"
	exit 1
fi

if [ "$(whoami)" != "root" ]
	then
	printf "本程式需要安裝翻譯資料到系統目錄底下\n"
	printf "請以 root 身份執行此程式\n"
	exit 1
fi

install -D --owner=root --group=root --mode=0644 _codeblocks-zh_TW.mo /usr/share/codeblocks/locale/zh_TW/LC_MESSAGES/codeblocks.mo
install -D --owner=root --group=root --mode=0644 _codeblocks-zh_CN.mo /usr/share/codeblocks/locale/zh_CN/LC_MESSAGES/codeblocks.mo
printf "翻譯資料安裝完成，要更新翻譯請將新版本底 PO 翻譯資料檔案覆蓋此目錄的版本再執行 convertMachineFormat.sh 跟 installTranslation.sh 程式即可。\n"
exit 0