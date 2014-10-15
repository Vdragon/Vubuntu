#!/bin/bash
if [ $# -gt 2 ]; then
	echo "參數數量錯誤！"
	exit 1
elif [ $# -eq 2 ]; then
	name_project_original="$1"
	name_project="$2"
elif [ $# -eq 1 ]; then
	name_project_original="Generic_Software_Project_Template"
	name_project="$1"
else 
	read -p "請輸入原來的專案名稱（不輸入則使用預設值「Generic_Software_Project_Template」）：" name_project_original
	if [ -z "${name_project_original}" ]; then
		name_project_original="Generic_Software_Project_Template"
	fi
	read -p "請輸入新的專案名稱：" name_project
	if [ -z "${name_project_original}" ]; then
		echo "輸入錯誤！"
		exit 1
	fi
fi

sed --in-place "s/${name_project_original}/${name_project}/g" CMakeLists.txt

sed --in-place "s/global_software_information.software_name = \"${name_project_original}\";/global_software_information.software_name = \"${name_project}\"/g;" Source_code/main.cpp

sed --in-place "s/${name_project_original}/${name_project}/g" IDE_Eclipse_CDT/.*project

sed --in-place "s/${name_project_original}/${name_project}/g" "IDE_Code__Blocks/${name_project_original}.cbp"
mv "IDE_Code__Blocks/${name_project_original}.cbp" "IDE_Code__Blocks/${name_project}.cbp"

sed --in-place "s/${name_project_original}/${name_project}/g" "IDE_CodeLite/${name_project_original}.project"
mv "IDE_CodeLite/${name_project_original}.project" "IDE_CodeLite/${name_project}.project"
exit 0