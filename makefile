all: clean build_process

build_process:
	gcc -S build_process_helloWorld.c -o build_process_helloWorld.s
	gcc -c build_process_helloWorld.s
	gcc -o build_process_helloWorld build_process_helloWorld.o

clean:
	-rm -rf *.o build_process_helloWorld build_process_helloWorld.s
