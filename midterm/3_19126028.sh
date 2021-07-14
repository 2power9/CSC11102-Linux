#! /bin/bash
# Ho va ten: Tran Nguyen Hue Nhu
# MSSV: 19126028
# Lop : 20VP
# Bai thi giua ky

#--------------------------------------------------------------
# Cau 3
#--------------------------------------------------------------
mkdir Cau3; cd Cau3
touch {red,blue,violet,magenta,pink,gold,lime,lightblue}_{sphere,torus,cylinder,cone,cube}
ls |wc -l

# 3.1
ls | grep -E "^li.*e$"find li*e 

# 3.2
ls | grep -E "_[s,t]"  

# 3.3
ls | grep -E "cylinder" 

# 3.4
ls | grep -vE ".*[e,r]$"