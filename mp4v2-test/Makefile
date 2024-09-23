CROSS_COMPILE=

CXX = $(CROSS_COMPILE)g++
CC = $(CROSS_COMPILE)gcc
AR = $(CROSS_COMPILE)ar
STRIP = $(CROSS_COMPILE)strip

CXXFLAGS = -std=c++11 -Wall -I. -I./include -I./util
LDLIBS = -lpthread -L/usr/local/lib -lmp4v2  # Specify the library path and name

# Source directories
SRCDIR = libutil src
SRC = $(shell find $(SRCDIR) -name '*.cpp')  # Find all .cpp files recursively
OBJ = $(SRC:.cpp=.o)  # Convert .cpp filenames to .o filenames

# Targets
all: cut_file
# sudo export LD_LIBRARY_PATH=/usr/local/lib

main: main.o mp4v2_mp4.o $(OBJ)
	$(CXX) $(CXXFLAGS) -o $@ $^ $(LDLIBS)

cut_file: cut_file.o $(OBJ)
	$(CXX) $(CXXFLAGS) -o $@ $^ $(LDLIBS)

nullvplayer: nullvplayer.o $(OBJ)
	$(CXX) $(CXXFLAGS) -o $@ $^ $(LDLIBS)

# Rules for compiling object files
%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

# Specific rules for main and cut_file
cut_file.o: cut_file.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

nullvplayer.o: nullvplayer.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

main.o: main.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

mp4v2_mp4.o: mp4v2_mp4.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

run: all
	sudo LD_LIBRARY_PATH=/usr/local/lib ./main

copy: all
	sudo cp main video.h264 audio.aac $(HOME)/FTEL/nFS/MP4v2Test

clean:
	rm -f main main.o mp4v2_mp4.o $(OBJ) cut_file.o nullplayer.o