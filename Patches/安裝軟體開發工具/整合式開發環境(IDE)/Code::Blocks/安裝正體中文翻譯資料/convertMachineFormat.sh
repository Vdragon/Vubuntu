#!/bin/bash
if [ "$(basename "$(pwd)")" != "安裝正體中文翻譯資料" ]
	then
	printf "請將當前工作目錄切換到 Patches/安裝軟體開發工具/整合式開發環境(IDE)/Code::Blocks/安裝正體中文翻譯資料/ 底下再執行此程式\n"
	exit 1
fi

msgfmt --output-file=_codeblocks-zh_TW.mo _codeblocks-zh_TW.po
msgfmt --output-file=_codeblocks-zh_CN.mo _codeblocks-zh_CN.po
exit 0