all: cpu60

CFLAGS+= -Wall -pedantic -Wextra -Werror

cpu60:	cpu60.c
	$(CC) $(CFLAGS) $< -o $@

clean:
	rm -rf cpu60

test:	cpu60
	./cpu60 -r < tests/prog.0.t > tests/prog.0.a
	diff -u tests/prog.0.o tests/prog.0.a
