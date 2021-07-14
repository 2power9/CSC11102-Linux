#!/bin/bash
echo "Type link:"
read link
if [ -d $link ]
then
    echo "This link is exist."
else
    echo "This link isn't exist."
    exit
fi

cd $link
rm -r *
mkdir BTTL BTTH

cd BTTL
for i in {1..9}
do
    mkdir BTTL$i
    cd BTTL$i
    touch 19126028.sh
    chmod ugo+x 19126028.sh
    echo "#!/bin/bash
    /*====================
    *Name: Tran Nguyen Hue Nhu
    *ID: 19126028
    *ID Assignment: BTTH02
    *=====================
    */" > 19126028.sh
    cd ..
done
ls
cd ..

cd BTTH
for i in {1..9}
do
    mkdir BTTH$i
    cd BTTH$i
    touch 19126028.sh
    chmod ugo+x 19126028.sh
    echo "#!/bin/bash
    /*====================
    *Name: Tran Nguyen Hue Nhu
    *ID: 19126028
    *ID Assignment: BTTH02
    *=====================
    */" > 19126028.sh
    cd ..
done
ls
cd ..

tree

cd BTTH/BTTH1
cat 19126028.sh

