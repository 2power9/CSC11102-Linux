#! /bin/bash
# Ho va ten: Tran Nguyen Hue Nhu
# MSSV: 19126028
# Lop : 20VP
# Bai thi giua ky
#--------------------------------------------------------------
# Cau 1
#--------------------------------------------------------------
# 1.1
cd ~
mkdir MidTerm_19126028
cd MidTerm_19126028

# 1.2
mkdir MidTerm

# 1.3
touch template.txt  

# 1.4
ls -l template.txt  

# 1.5
echo "Ho va ten: Tran Nguyen Hue Nhu" > template.txt

# 1.6
echo "MSSV: 19126028" >> template.txt  

# 1.7
cat template.txt 

# 1.8
mv template.txt MidTerm; mv MidTerm/template.txt MidTerm/ketqua.txt

# 1.9
chmod 700 MidTerm/ketqua.txt 

cd MidTerm 
# 1.10a
grep -E "Nguyen" ketqua.txt

# 1.10b
cut -f1,2 -d ":" ketqua.txt 

# 1.10c
cut -f1,2,4 -d ":" ketqua.txt > giuaky.txt