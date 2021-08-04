# My Makefile
EXE = exo1

.PHONY : all clean

all: ${EXE}

clean:
	rm *.o ${EXE}

${EXE} : *.o
	gcc $^ -o $@

%.o %.c:
	gcc -Wall -c $*.c

depend:
	makedepend *.c

# DO NOT DELETE

max.o: max.h
point.o: /usr/include/stdio.h point.h
principal.o: /usr/include/stdio.h max.h point.h
