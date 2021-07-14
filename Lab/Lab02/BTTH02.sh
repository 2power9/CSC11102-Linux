# Câu 1:

echo "Xin chao cac ban" 
cd /usr/lib 
echo ~/$USER
echo /etc
cd /; ls -R
sudo touch list.txt; sudo chmod 777 list.txt; ls -R > /list.txt
cd /boot; ls -R >> /list.txt
alias lietke="ls -l"
sudo mkdir -p linux/nhom1
sudo cp /list.txt linux/nhom1 
sudo mkdir bai2
cd /; sudo mv /list.txt linux/nhom1/bai2
sudo cp nhom1 /; sudo rm -rf nhom1


# Câu 2:

cd /etc
ls | grep -E "*conf*" 
ls | grep -E "^[bkn]"   
ls | grep -E "^[m-t]" 
ls | grep -E "*n\S$" 
ls | grep -E "^[ae]"; ls | grep -vE "^[bc]" 
grep -E "bin/(bash|false)" /etc/passwd  
grep -vE "bin/bash" /etc/passwd 


# Câu 3:

touch \\-myfile
rm \\-myfile
sudo touch hello1.txt hello2.txt hello3.txt
sudo cp hello1.txt hello2.txt hello3.txt linux 
sudo ln -s /etc /root/etc   
ls /boot > temp.txt; sort -r temp.txt
cat /etc/passwd 
head -10 /etc/passwd
tail -3 /etc/passwd
tail -n +5 /etc/passwd  
sed -n "7p" /etc/passwd 
sed -n "7p" /etc/passwd | tr a-z A-Z
wc -l /etc/passwd
sed -n "5p" /etc/passwd | wc -c
cat /etc/passwd | nl
echo "Xinchao\nCac ban" > hello.txt
which shutdown
find *.txt
find *.*
sudo grep -inrl "^\S[bkn]" /etc/ | sudo xargs cp -t /root/linux
find . -size +100M -exec cp -r {} root/linux \;
ls -l /etc/passwd #110100100 (2) → 644(8)
sudo useradd -m -c "Tran Nguyen Hue Nhu" -u 2001 sv
mkdir test
sudo chmod u-r test
sudo chmod u-x test 
cd test #cd: permission denied: test