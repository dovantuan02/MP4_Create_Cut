CROSS_COMPILE=

CXX = $(CROSS_COMPILE)g++
CC = $(CROSS_COMPILE)gcc
AR = $(CROSS_COMPILE)ar
STRIP = $(CROSS_COMPILE)strip

CXXFLAGS = -std=c++11 \
			-Wall \
			-I. \
			-I/home/tuan/FPT/MP4v2/mp4v2/include \
			-I/home/tuan/FPT/MP4v2/mp4v2/util \

LDLIBS = -lpthread -L/usr/local/lib -lmp4v2  # Specify the library path and name

# Source directories
SRCDIR += /home/tuan/FPT/MP4v2/mp4v2/libutil /home/tuan/FPT/MP4v2/mp4v2/src
SRC = $(shell find $(SRCDIR) -name '*.cpp')  # Find all .cpp files recursively
OBJ = $(SRC:.cpp=.o)  # Convert .cpp filenames to .o filenames

# Targets
all: mp4clip
# sudo export LD_LIBRARY_PATH=/usr/local/lib

main: mp4clip.o $(OBJ)
	$(CXX) $(CXXFLAGS) -o $@ $^ $(LDLIBS)

mp4clip: mp4clip.o $(OBJ)
	$(CXX) $(CXXFLAGS) -o $@ $^ $(LDLIBS)

# Rules for compiling object files
%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

# Specific rules for main and combine_file
mp4clip.o: mp4clip.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

run: all
	sudo LD_LIBRARY_PATH=/usr/local/lib ./main

clean:
	rm -f main mp4clip.o $(OBJ)