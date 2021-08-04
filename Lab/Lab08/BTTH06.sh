#!/bin/bash

# Ho va ten: Tran Nguyen Hue Nhu
# MSSV: 19126028

showHelp() {
	echo "help: $0 dir_path output"
}

makeAMakeFile() { # output files .c
	output=$1
	shift
	echo -e "#My makefile\n
EXE = $output\n
.PHONY : all clean\n
all: \${EXE}\n
clean:\n\trm *.o \${EXE}\n
\${EXE} : *.o\n\tgcc \$^ -o \$@\n
%.o %.c:\n\tgcc -Wall -c \$*.c\n
depend:\n\tmakedepend *.c\n\n" > "Makefile"
}

if [ $# -ne 2 ] || ! [ -d $1 ]
then
	showHelp
	exit 0
fi

cd $1
makeAMakeFile $2