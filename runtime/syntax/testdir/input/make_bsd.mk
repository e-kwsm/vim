.for i in 1 2 3
a += $(i)
.endfor

.export a

.ifmake all
.info "IS all"
.else
.warning "IS NOT all"
.endif

.PHONY: all
all:
	@echo ${.TARGETS:Mall} ${.TARGETS:tu}

.PHONY: seq
seq:
	@echo ${a}
