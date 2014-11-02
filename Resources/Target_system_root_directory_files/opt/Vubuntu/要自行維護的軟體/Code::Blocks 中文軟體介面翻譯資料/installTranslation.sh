#!/bin/bash

if [ "$(basename "$(pwd)")" != "Code::Blocks 中文軟體介面翻譯資料" ]
	then
	printf "請將當前工作目錄切換到 /opt/Vubuntu/Code::Blocks 中文軟體介面翻譯資料/ 底下再執行此程式\n"
	exit 1
fi

if [ "$(whoami)" != "root" ]
	then
	printf "本程式需要安裝翻譯資料到系統目錄底下\n"
	printf "請以 root 身份執行此程式\n"
	exit 1
fi

ln --force --symbolic "$(pwd)/locale" /usr/share/codeblocks/
printf "翻譯資料安裝完成，要更新翻譯請將新版本底 PO 翻譯資料檔案覆蓋此目錄的版本再執行 convertMachineFormat.sh 程式即可。\n"
exit 0