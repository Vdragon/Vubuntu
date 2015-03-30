# 改用中華民國國家時間與頻率標準實驗室的校時服務
## 修正介紹
改用中華民國國家時間與頻率標準實驗室的 NTP 校時伺服器，增加系統時間的精確度

## 修正方式
1. 以 root 身份編輯 /etc/ntp.conf 設定檔，將 [ntp.conf.Vubuntu_patch_add_Taiwan_government_time_servers.inject_config](ntp.conf.Vubuntu_patch_add_Taiwan_government_time_servers.inject_config) 檔案的內容插入並將散佈版本預設使用的時間伺服器註解掉。