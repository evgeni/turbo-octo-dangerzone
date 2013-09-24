libfoo.so:
	gcc -c -Wall -Werror -fpic foo.c
	gcc -shared -o libfoo.so foo.o

foo: libfoo.so
	gcc -L. -Wall -o foo main.c -lfoo -lcrypto -lssl

bar: libfoo.so
	gcc -L. -Wall -o bar main.c -lfoo -lssl -lcrypto

baz: libfoo.so
	gcc -L. -Wall -o baz main.c -lfoo `pkg-config --libs libssl`

.PHONY: foo bar baz
