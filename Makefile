.PHONY: clean

CXX?=g++
CXXFLAGS=-g $(shell pkg-config --libs --cflags gtkmm-3.0) \
	 -Wall

bin/main: main.cc
	$(CXX) -o $@ $(CXXFLAGS) $(LDXXLIBS) $^

clean:
	rm bin/*

