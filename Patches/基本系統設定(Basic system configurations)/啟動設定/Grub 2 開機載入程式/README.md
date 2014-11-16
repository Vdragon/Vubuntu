# Grub 2 開機載入程式
## 目錄說明
### /etc/default/grub 與 /etc/default/grub.d/*.cfg
根據 grub-mkconfig 的程式碼：
```
if test -f ${sysconfdir}/default/grub ; then
  . ${sysconfdir}/default/grub
fi
for x in ${sysconfdir}/default/grub.d/*.cfg ; do
  if [ -e "${x}" ]; then
    . "${x}"
  fi
done
```
/etc/default/grub.d/*.cfg 的設定會覆蓋 /etc/default/grub 的設定，且不會因 grub 升級被覆蓋

### /etc/grub.d
執行 `update-grub`(`grub-mkconfig`) 時被執行用來建立 grub.cfg 檔案的腳本程式，檔案名稱格式為 NN_&lt;name&gt;（N 為 0~9 的數字）決定了執行的順序

#### /etc/grub.d/NN_os-prober
自動偵測並加入其他作業系統開機選項的腳本程式
