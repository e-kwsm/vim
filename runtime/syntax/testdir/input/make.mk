CC = cc
CC ?= clang
CFLAGS += -Wall
CPPFLAGS := -D_XOPEN_SOURCE=500
pwd != pwd

foo:
	+@echo '#'

bar:

	@#wrong highlight
	@echo '#'

%.o: %.c
	$(CC) -c $(CFLAGS) $(CPPFLAGS) -o $@ $<

.PRECIOUS: c.o

clean:; -rm *.o

.PHONY: foo bar clean
