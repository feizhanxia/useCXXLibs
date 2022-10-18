CC = gcc
CFLAGS := $(gsl-config --cflags)
LDLIBS := -lgsl -lgslcblas # $(echo $(gsl-config --libs)) 
main: main.o libmymath.a
	$(CC) -o main $(LDLIBS) main.o libmymath.a  
	@# -L. -lmymath
	# Makefile 1.0
add.o: add.c add.h
	$(CC) -c add.c
sub.o: sub.c sub.h
	$(CC) -c sub.c
libmymath.a: add.o sub.o
	ar cr libmymath.a add.o sub.o
main.o: main.c add.h sub.h
	$(CC) -c main.c

obj = main.o add.o sub.o
.PHONY: cleanall cleanobj
cleanobj:
	rm $(obj)
cleanall:
	rm main $(obj) libmymath.a
