# Nome do executável final
EXEC = main

# Coletar todos os arquivos .c da pasta atual
SRCS = $(wildcard *.c)

# Gerar os arquivos .o correspondentes
OBJS = $(SRCS:.c=.o)

# Compilador e flags
CC = gcc
CFLAGS =

# Regra principal, gera o executável
$(EXEC): $(OBJS)
	$(CC) $(CFLAGS) -o $(EXEC) $(OBJS)

# Regra para compilar cada arquivo .c em um .o
%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

# Limpar os arquivos gerados
clean:
	rm -f $(OBJS) $(EXEC)

run:
	./main
