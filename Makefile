CC=clang
CFLAGS= -Wno-pragma-pack -Wall -O3 -ISDL2-2.0.9\include -Iheader -Iglad\include -Iglad\include\glad   #-Werror
LDFLAGS  = -lSDL2 -L.

Engine_2D.exe: o\main.o o\glad.o o\renderer.o o\shader_utils.o o\vectors.o o\window.o
	$(CC) -o $(BINARY) $(LDFLAGS) $^

o\main.o : src\main.c
	$(CC) -c -o $@ $(CFLAGS) $^

o\glad.o :  glad\src\glad.c
	$(CC) -c -o $@ $(CFLAGS) $^

o\renderer.o : src\renderer.c
	$(CC) -c -o $@ $(CFLAGS) $^

o\shader_utils.o : src\shader_utils.c
	$(CC) -c -o $@ $(CFLAGS) $^

o\vectors.o : src\vectors.c
	$(CC) -c -o $@ $(CFLAGS) $^

o\window.o : src\window.c
	$(CC) -c -o $@ $(CFLAGS) $^

clean: 
	rm -f *.o 

