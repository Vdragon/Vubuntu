#!/bin/bash
if [ "$(basename "$(pwd)")" != "Code::Blocks 中文軟體介面翻譯資料" ]
	then
	printf "請將當前工作目錄切換到 /opt/Vubuntu/Code::Blocks 中文軟體介面翻譯資料/ 底下再執行此程式\n"
	exit 1
fi

msgfmt  --output-file=locale/zh_TW/_codeblocks-zh_TW.mo _codeblocks-zh_TW.po
msgfmt  --output-file=locale/zh_CN/_codeblocks-zh_CN.mo _codeblocks-zh_CN.po
exit 0