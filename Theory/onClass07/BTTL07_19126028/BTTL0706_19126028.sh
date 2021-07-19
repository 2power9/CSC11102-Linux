#! /bin/bash

if [ $# -ne 1 ]
then
	echo "$0 [directory]"
	exit 0
fi

dir=$1

isExist() {
	if [ -e $dir ]
	then
		echo "$dir exist."
	else
		echo "$dir doesn't exist."
	fi
}

isDir() {
	if [ -d $dir ]
	then
		return 0 #true
	fi
	return 1 #false
}

isFile() {
	if [ -f $dir ]
	then
		return 0 #true
	fi
	return 1 #false
}

getExtension() {
	echo "Extension: ${dir%%${dir##*/}}"
}

getFileName () {
    echo "File name: ${dir##*/}"
}

getFileInfo () {
	isExist

   	echo -n "Type: "

   	if isDir 
   	then
		echo "$dir is a directory."
	fi

	if isFile
	then
		echo "$dir is a file."
		getFileName
		getExtension
		wc $dir
	fi
	
}

getFileInfo