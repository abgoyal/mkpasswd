LDLIBS = -lcrypt
CFLAGS = -Wall -O3 -flto

mkpasswd: mkpasswd.o utils.o

static: CFLAGS += -static
static: mkpasswd

.PHONY: static strip clean

strip:
	strip mkpasswd

clean:
	rm -f *.o mkpasswd
