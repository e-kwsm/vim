# static pattern
a.o b.o: %.o: %.c
	$(info $<)
