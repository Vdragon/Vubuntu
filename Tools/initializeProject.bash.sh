#!/bin/bash
# 移除 C_CPP_project_template 原本的 Git 程式碼倉庫
rm -rf .git/
./Tools/renameProject.bash.sh
exit 0