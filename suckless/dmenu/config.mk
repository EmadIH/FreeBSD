# dmenu version
VERSION = 5.3

# paths
PREFIX = /usr/local
MANPREFIX = $(PREFIX)/share/man

X11INC = /usr/local/include
X11LIB = /usr/local/lib

BDINC = /usr/local/include/fribidi

# Xinerama, comment if you don't want it
XINERAMALIBS  = -lXinerama
XINERAMAFLAGS = -DXINERAMA

# freetype
FREETYPELIBS = -lfontconfig -lXft
FREETYPEINC = /usr/local/include/freetype2
# OpenBSD (uncomment)
#FREETYPEINC = $(X11INC)/freetype2
#MANPREFIX = ${PREFIX}/man

BDLIBS = -lfribidi

# includes and libs
INCS = -I$(X11INC) -I$(FREETYPEINC) -I$(BDINC)
LIBS = -L$(X11LIB) -lX11 $(XINERAMALIBS) $(FREETYPELIBS) $(BDLIBS)

# flags
CPPFLAGS = -D_DEFAULT_SOURCE -D_BSD_SOURCE -D_XOPEN_SOURCE=700 -D_POSIX_C_SOURCE=200809L -DVERSION=\"$(VERSION)\" $(XINERAMAFLAGS)
CFLAGS   = -std=c99 -pedantic -Wall -Os $(INCS) $(CPPFLAGS)
LDFLAGS  = $(LIBS)

# compiler and linker
CC = cc
