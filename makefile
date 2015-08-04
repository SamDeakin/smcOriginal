FLAGS = -o smc -framework IOKit -D SMC_MAIN
CC = clang
FILES = smc.c

smc:
	$(CC) $(FLAGS) $(FILES)
