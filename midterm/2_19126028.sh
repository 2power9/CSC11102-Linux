#! /bin/bash
# Ho va ten: Tran Nguyen Hue Nhu
# MSSV: 19126028
# Lop : 20VP
# Bai thi giua ky
#--------------------------------------------------------------
# Cau 2
#--------------------------------------------------------------
# 2.1
sudo useradd -m -c "Nguyen Thi Anh" ntanh
mkdir ~/ntanh

# 2.2
sudo groupadd vp20 

# 2.3
sudo usermod -a -G vp20 ntanh

# 2.4
sudo passwd ntanh