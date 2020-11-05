# // main.c kor.c usa.c
# // --> main.o kor.o usa.o
# // --> binary (app.out)

CC = gcc
TARGET = app.out
OBJS = main.o kor.o usa.o

CFLAGS = -Wall -g
LDFLAGS = -lc

all : $(TARGET)

$(TARGET) : $(OBJS)
	$(CC) $(LDFLAGS) -o $@ $^

.c.o:
	$(CC) $(CFLAGS) -c -o $@ $<

clean:
	rm -f $(OBJS) $(TARGET)

# /-----------------------------
# main.o : 
# 	$(CC) -c main.c

# kor.o :
# 	$(CC) -c kor.c

# usa.o :
# 	$(CC) -c usa.c