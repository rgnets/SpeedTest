
TARGET    = speedtest
SRCFILES  = $(wildcard *.cpp)
OBJFILES  = $(patsubst %.cpp,%.o,$(SRCFILES))
UNAME     = $(shell uname -s)

CXXFLAGS  = -Wall -std=c++11
LDFLAGS   =
RM        = rm -f
INSTALL   = install

ifeq ($(UNAME), FreeBSD)
CXXFLAGS += -I. -I/usr/local/include -I/usr/local/include/libxml2
LDFLAGS  += -L/usr/local/lib -lcurl -lxml2 -ljsoncpp -lcrypto -lpthread
CXX       = clang++
else # if not FreeBSD, just assume Linux
CXXFLAGS += -I. -I/usr/include -I/usr/include/libxml2 -I/usr/include/jsoncpp
LDFLAGS  += -L/usr/lib -lcurl -lxml2 -ljsoncpp -lcrypto -lpthread
CXX      := $(CROSS_COMPILE)g++
endif

CXXFLAGS += -Wno-pessimizing-move -Wno-deprecated-declarations

all: $(TARGET)

$(TARGET): $(OBJFILES)
	$(CXX) -o $(TARGET) $(OBJFILES) $(LDFLAGS)

%.o : %.cpp
	$(CXX) $(CXXFLAGS) -o $@ -c $<

install:
	$(INSTALL) -s -m 755 speedtest $(DESTDIR)$(PREFIX)/bin/

clean:
	$(RM) $(TARGET)
	$(RM) $(OBJFILES)

.PHONY: all install clean
