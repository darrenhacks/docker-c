.PHONY: clean

DEFAULT_GOAL := docker-c

docker-c: main.c
	gcc -o docker-c -static main.c

clean:
	rm docker-c

