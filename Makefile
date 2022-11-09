# Regards variable values come from upstream tools.
CFLAGS += -std=c99 -Wall -Wextra -O2
SRCS = chinadns.c dnsutils.c dnlutils.c netutils.c
OBJS = $(SRCS:.c=.o)
MAIN = chinadns-ng

.PHONY: all clean

all: $(MAIN)

$(MAIN): $(OBJS)
	$(CC) $(CFLAGS) $(LDFLAGS) -o $(MAIN) $(OBJS)

clean:
	$(RM) *.o $(MAIN)
