CC = gcc
CFLAGS = -Wall -Wextra -std=c99

SRC_DIR = src
OBJ_DIR = obj
BIN_DIR = bin
DOC_DIR = doc

TARGET = $(BIN_DIR)/guessing_game

SRC = $(wildcard $(SRC_DIR)/*.c)
OBJ = $(patsubst $(SRC_DIR)/%.c, $(OBJ_DIR)/%.o, $(SRC))

.PHONY: all clean archive documentation

all: $(TARGET)

$(TARGET): $(OBJ)
	$(CC) $(CFLAGS) $^ -o $@

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -rf $(OBJ_DIR) $(BIN_DIR) $(DOC_DIR)

archive:
	tar -czvf guessing_game.tar.gz $(SRC_DIR) $(DOC_DIR) Makefile README.md

documentation:
	doxygen Doxyfile
