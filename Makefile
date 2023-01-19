
TARGET    = SpeedTest
SRCFILES  = $(wildcard *.cpp)
OBJFILES  = $(patsubst %.cpp,%.o,$(SRCFILES))
UNAME     = $(shell uname -s)

CXXFLAGS  = -Wall -std=c++11
LDFLAGS   =
RM        = rm -f

ifeq ($(UNAME), FreeBSD)
CXXFLAGS += -I. -I/usr/local/include -I/usr/local/include/libxml2
LDFLAGS  += -L/usr/local/lib -lcurl -lxml2 -ljsoncpp -lcrypto -lpthread
CXX       = clang++
else # if not FreeBSD, just assume Linux
CXXFLAGS += -I. -I/usr/include -I/usr/include/libxml2 -I/usr/include/jsoncpp
LDFLAGS  += -L/usr/lib -lcurl -lxml2 -ljsoncpp -lcrypto -lpthread
CXX       = g++
endif

$(TARGET): $(OBJFILES)
	$(CXX) -o $(TARGET) $(OBJFILES) $(LDFLAGS)

%.o : %.cpp
	$(CXX) $(CXXFLAGS) -o $@ -c $<

clean:
	$(RM) $(TARGET)
	$(RM) $(OBJFILES)

.PHONY: clean
