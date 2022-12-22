
TARGET    = SpeedTest
SRCFILES  = $(wildcard *.cpp)
OBJFILES  = $(patsubst %.cpp,%.o,$(SRCFILES))

CXXFLAGS  = -Wall -std=c++11
CXXFLAGS += -I. -I/usr/local/include -I/usr/local/include/libxml2
LDFLAGS   = -L/usr/local/lib -lcurl -lxml2 -ljsoncpp -lcrypto -lpthread
CXX       = clang++
RM        = rm -f

$(TARGET): $(OBJFILES)
	$(CXX) -o $(TARGET) $(OBJFILES) $(LDFLAGS)

%.o : %.cpp
	@echo "[compile] ${@}"
	$(CXX) $(CXXFLAGS) -o $@ -c $<

clean:
	$(RM) $(TARGET)
	$(RM) $(OBJFILES)

.PHONY: clean
