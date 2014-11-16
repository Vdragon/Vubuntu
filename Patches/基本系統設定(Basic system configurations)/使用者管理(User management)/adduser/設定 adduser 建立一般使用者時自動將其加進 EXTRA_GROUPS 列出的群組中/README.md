# 設定 adduser 建立一般使用者時自動將其加進 EXTRA_GROUPS 列出的群組中 
## 修正方式
以 root 身份編輯 adduser 的設定檔(`/etc/adduser.conf`)，參考 [adduser.conf.Vubuntu_patch.新增非系統使用者時自動將其加入 EXTRA_GROUPS 的群組中](adduser.conf.Vubuntu_patch.新增非系統使用者時自動將其加入 EXTRA_GROUPS 的群組中) 將 `ADD_EXTRA_GROUPS` 設定值取消註解。