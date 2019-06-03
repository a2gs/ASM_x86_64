all: clean build_process

build_process:
	cpp gcc_build_process_helloWorld.c > gcc_build_process_helloWorld.i
	gcc -S gcc_build_process_helloWorld.i -o gcc_build_process_helloWorld.s
	gcc -c gcc_build_process_helloWorld.s
	gcc -o gcc_build_process_helloWorld gcc_build_process_helloWorld.o

clean:
	-rm -rf *.o gcc_build_process_helloWorld gcc_build_process_helloWorld.[is]
