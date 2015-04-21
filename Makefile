CC=arm-none-linux-gnueabi-gcc

PRJ_CFLAGS = 
TEST_FILES = memcpy_test.o

All: $(TEST_FILES)
	$(CC) -c -fPIC memcpy.S -o memcpy.o
	$(CC) memcpy.o -shared -o libmymemcpy.so
	$(CC) memcpy_test.o -Llibmymemcpy.so -o memcpy_test

.c.o:
	$(CC) $(PRJ_CFLAGS) -c $< -o $@

clean:
	rm  *.o

