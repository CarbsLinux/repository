.SUFFIXES:
.SUFFIXES: .o .c

PREFIX = /usr
BINDIR = ${PREFIX}/bin
MANPREFIX = ${PREFIX}/share/man

CPPFLAGS = -D_GNU_SOURCE -DEMACS -DVI -I.
CC = cc
LDFLAGS = -static
SRC = \
	alloc.c \
	asprintf.c \
	c_ksh.c \
	c_sh.c \
	c_test.c \
	c_ulimit.c \
	confstr.c \
	edit.c \
	emacs.c \
	eval.c \
	exec.c \
	expr.c \
	history.c \
	io.c \
	jobs.c \
	lex.c \
	mail.c \
	main.c \
	misc.c \
	path.c \
	reallocarray.c \
	shf.c \
	siglist.c \
	signame.c \
	strlcat.c \
	strlcpy.c \
	strtonum.c \
	syn.c \
	table.c \
	trap.c \
	tree.c \
	tty.c \
	unvis.c \
	var.c \
	version.c \
	vi.c \
	vis.c \

LIBS = -lc -lncursesw

OBJ = ${SRC:.c=.o}
BIN = ksh

all: ${BIN}

${BIN}: ${OBJ}
	${CC} ${LDFLAGS} -o $@ ${OBJ} ${LIBS}

.c.o:
	${CC} -c ${CFLAGS} ${CPPFLAGS} -o $@ $<

clean:
	rm -f ${OBJ} ksh

install: all
	mkdir -p ${DESTDIR}${BINDIR} ${DESTDIR}${MANPREFIX}/man1
	cp ksh ${DESTDIR}${BINDIR}
	chmod 755 ${DESTDIR}${BINDIR}/ksh
	cp sh.1 ${DESTDIR}${MANPREFIX}/man1/ksh.1
	chmod 644 ${DESTDIR}${MANPREFIX}/man1/ksh.1

.PHONY: all clean install
