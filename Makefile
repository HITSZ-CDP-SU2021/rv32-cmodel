emu_src: stage/* include/* main.c
run-all: emu
	python3 ./run_all_tests.py
emu: emu_src
	gcc main.c cpu.c stage/*.c -o emu
clean:
	rm -f emu log 
