CC = gcc
CFLAGS = -Wall -Wextra -Wswitch-enum -Wno-missing-braces -Wno-unused-function \
		 -Wno-missing-field-initializers -ggdb -O0 -Iheader/
LDFLAGS = -lm

SRC = main.c
OBJ = ${SRC:.c=.o}
BIN = build/main

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
