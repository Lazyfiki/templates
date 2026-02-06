CC = clang
CFLAGS = -std=c99 -Wall -Werror
LDFLAGS = -lm

SRC = main.c
OBJ = ${SRC:.c=.o}
BIN = main

all: ${BIN} run

.c.o:
	${CC} -c ${CFLAGS} $< -o $@

${BIN}: ${OBJ}
	${CC} -o $@ ${OBJ} ${LDFLAGS}

run: ${BIN}
	./${BIN}

clean:
	rm -f ${OBJ} ${BIN}

.PHONY: all run clean
