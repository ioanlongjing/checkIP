這是我因為工作隨手寫得小程式
如果要使用需要，必須 create host1.txt 寫 IP 的檔案

= = = = = = = = = = = = = =
使用方法

./checkIP.sh 

就可以執行，它會自己去讀 all.txt
如果遇到不能 ping 的，會將 IP 寫在 failIP.txt 裡面

並將不能 ping 的 IP 從 all 裡去掉, 輸出成 filter.txt

使用環境：Bash ( Mac , Linux - Ubuntu )
其他的環境可能可以, 但要試看看
