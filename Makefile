CC=clang
WARNINGS=-Wall -Wextra -Wshadow -Wcast-qual -Wfloat-equal -Wconversion -Wmissing-include-dirs -Wno-unused-parameter
INCLUDE=-Iinclude -Ilibobjc2/
LIBS=-Llibobjc2 -lobjc -lpthread
CFLAGS=$(WARNINGS) $(INCLUDE) -std=c99 -fobjc-nonfragile-abi -O3
#CFLAGS=$(WARNINGS) $(INCLUDE) -std=c99 -O3

all: src/WCObject.o src/WCString.o

src/WCObject.o: include/wolfcore/WCObject.h src/WCObject.m
	$(CC) $(CFLAGS) -c src/WCObject.m -Wno-objc-missing-super-calls

src/WCString.o: include/wolfcore/WCObject.h include/wolfcore/WCString.h src/WCString.m
	$(CC) $(CFLAGS) -c src/WCString.m

clean:
	rm -f *.o
