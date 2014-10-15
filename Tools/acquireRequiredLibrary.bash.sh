#!/bin/bash
# 	宣告執行 script 程式用的殼程式(shell)
################## Header block ##################
# Script程式名稱
# Script Name
# 	獲取本專案所需之函式庫的程式
# 著作權宣告
# Copyright Declaration
# 	Ｖ字龍(Vdragon) <pika1021@gmail.com> (c) 2014
# 授權條款宣告
# License Declaration
# 	請參閱「C 或 C++ 程式語言專案範本」的說明
# 傳回值定義
# Return Value Definition
# 	0
# 		正常結束
# 已知問題
# Known Issues
# 	Known issues is now tracked on GitHub
# 	
# 修訂紀錄
# Changelog
# 	Changelog is now tracked using Git repostiory commit log
# 	
############## Header block ended ##############

######## File scope variable definitions ########
# idea from http://www.kfirlavi.com/blog/2012/11/14/defensive-bash-programming/
readonly PROGRAM_NAME="$(basename $0)"
readonly PROGRAM_DIRECTORY="$(readlink -m $(dirname $0))"
readonly PROGRAM_ARGUMENT_ORIGINAL_LIST="$@"
readonly PROGRAM_ARGUMENT_ORIGINAL_NUMBER=$#
readonly project_root_path="${PROGRAM_DIRECTORY}/.."

######## File scope variable definitions ended ########

######## Included files ########
source "${project_root_path}/Tools/checkIllegalUsage.bash.source.sh"
######## Included files ended ########

######## Program ########
# main function, program entry point
# idea from http://www.kfirlavi.com/blog/2012/11/14/defensive-bash-programming/
main() {
	set -x
	
	checkIllegalUsage
	
	mkdir --parent 3rd_party_software
	cd 3rd_party_software

	# 取得 VCCL 函式庫來源程式碼
	if [ ! -d Vdragon_s_C_CPP_Libraries_Collection ]; then
		git clone https://github.com/Vdragon/Vdragon_s_C_CPP_Libraries_Collection.git
	fi

	cd Vdragon_s_C_CPP_Libraries_Collection/Buildsystem_CMake
	git pull --force
	cmake ..
	make
	cp --force --recursive Build/Libraries/* "${project_root_path}/Libraries"
	cp --force --recursive Build/Library_headers/* "${project_root_path}/Library_headers"
	cd "${project_root_path}/Libraries"
	ln --symbolic */*.a .

	## 正常結束 script 程式
	exit 0
	set +x
}
main