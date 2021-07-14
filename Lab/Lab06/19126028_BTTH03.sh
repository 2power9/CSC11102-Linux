#! /bin/bash
# Ho va ten: Tran Nguyen Hue Nhu
# MSSV: 19126028

# Cau 2
showHelp() {
	echo "Usage: $0 [-h|--help] [-a|--all] [-f|--find filename]  [-c|--count filename] dir"
}

# Cau 3
showAllFiles() {
	local dir="$1"
	if [ -e $dir ]
	then
		echo "List of sub directories:"
		for sub_dir in $dir/*
		do
			echo $sub_dir
		done
	else
		echo "$dir not exist."
		exit 0
	fi
}

# Cau 4
findFile() {
	local dir=$1 file_name=$2
    for file in $dir/*/$file_name
    do
        if [ -f $file ]
        then
            echo $file
        else
            echo "$file not found"
        fi
    done
}

# Cau 5
countLines() {
	local path="$1"
	if [ -e $path ]
	then
		if [ -r $path ]
		then
			echo -n "${path##*/} "
			wc -l $path
		else
			echo "$file can't read"
		fi
	else
		echo "$path not exist"
		exit 0
	fi 
}

# Cau 6                                                                
flag_countline=false
flag_find=false
flag_all=false
flag_help=false

# Cau 8
for i in $*
do
    case "$1" in
        -h | --help)
            flag_help=true
            shift
	    ;;
        -a | --all)
            flag_all=true
            shift
	    ;;
        -f | --find)
            flag_find=true
            shift
	    ;;
        -c | --count)
            flag_countline=true
            shift
	    ;;
         *)
        ;;
    esac
done

# Cau 7
showInfos() {
    if $flag_help
    then
        showHelp
    fi

    if $flag_countline
    then
        countLines $*
    fi

    if $flag_find
    then
        findFile $*
    fi

    if $flag_all
    then
        showAllFiles $*
    fi
}

if [ $# -lt 1 ]
then
    showHelp
    exit 1
fi

showInfos $*