all: clean build_process

build_process:
	gcc -S gcc_build_process_helloWorld.c -o gcc_build_process_helloWorld.s
	gcc -c gcc_build_process_helloWorld.s
	gcc -o gcc_build_process_helloWorld gcc_build_process_helloWorld.o

clean:
	-rm -rf *.o gcc_build_process_helloWorld gcc_build_process_helloWorld.s
