CC = gcc

SDIR = ./src
IDIR = ./inc /usr/include
LDIR = /usr/lib
BUILD = ./build
DEBUG = ./debug
OBJDIR = ./obj

SRCS = $(shell find $(SDIR) -name *.c)
OBJS = $(SRCS:$(SDIR)/%.c=$(OBJDIR)/%.o)
EXE = SPE_2D #simple physics engine for 2D environment


CFLAGS = -Wall $(addprefix -I,$(IDIR)) $(shell sdl2-config --cflags)
LIB = gsl gslcblas m
LFLAGS = $(addprefix -L,$(LDIR)) $(addprefix -l,$(LIB)) $(shell sdl2-config --libs)

$(BUILD)/$(EXE): $(OBJS)
	$(CC) -o $@ $^ $(LFLAGS)

$(OBJDIR)/%.o: $(SDIR)/%.c 
	$(CC) -c -o $@ $< $(CFLAGS)

.PHONY: clean

clean:
	rm -f $(OBJS) $(BUILD)/$(EXE) $(DEBUG)/$(EXE)

.PHONY: debug

debug: $(DEBUG)/$(EXE) 

$(DEBUG)/$(EXE): $(OBJS)
	$(CC) -g -o $@ $^ $(CFLAGS) $(LFLAGS)
