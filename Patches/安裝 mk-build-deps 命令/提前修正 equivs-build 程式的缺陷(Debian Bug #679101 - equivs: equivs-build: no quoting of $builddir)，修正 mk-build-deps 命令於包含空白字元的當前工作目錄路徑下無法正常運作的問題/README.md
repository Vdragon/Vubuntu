# 提前修正 equivs-build 程式的缺陷(Debian Bug #679101 - equivs: equivs-build: no quoting of $builddir)，修正 mk-build-deps 命令於包含空白字元的當前工作目錄路徑下無法正常運作的問題
## 修正方式
1. 於終端機內切換當前工作目錄到根目錄下
2. 以 root 身份執行 `patch < 〈[_usr_bin_equivs-build - quote entire path.patch](_usr_bin_equivs-build - quote entire path.patch) 的路徑〉` 命令套用修正。
