CC = gcc
CFLAGS = -Wall -Wextra -ggdb -O0 -Iheader/
LDFLAGS = -lm

SRC = main.c
OBJ = ${SRC:.c=.o}
BIN = build/main

all: ${BIN}

.c.o:
	${CC} -c ${CFLAGS} $< -o $@

${BIN}: ${OBJ}
	${CC} -o $@ ${OBJ} ${LDFLAGS}

clean:
	rm -f ${OBJ} ${BIN}

.PHONY: all clean
