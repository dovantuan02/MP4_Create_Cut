# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/tuan/FPT/MP4v2/mp4v2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/tuan/FPT/MP4v2/mp4v2

# Include any dependencies generated for this target.
include CMakeFiles/mp4chaps.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/mp4chaps.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/mp4chaps.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/mp4chaps.dir/flags.make

CMakeFiles/mp4chaps.dir/util/mp4chaps.cpp.o: CMakeFiles/mp4chaps.dir/flags.make
CMakeFiles/mp4chaps.dir/util/mp4chaps.cpp.o: util/mp4chaps.cpp
CMakeFiles/mp4chaps.dir/util/mp4chaps.cpp.o: CMakeFiles/mp4chaps.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tuan/FPT/MP4v2/mp4v2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/mp4chaps.dir/util/mp4chaps.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/mp4chaps.dir/util/mp4chaps.cpp.o -MF CMakeFiles/mp4chaps.dir/util/mp4chaps.cpp.o.d -o CMakeFiles/mp4chaps.dir/util/mp4chaps.cpp.o -c /home/tuan/FPT/MP4v2/mp4v2/util/mp4chaps.cpp

CMakeFiles/mp4chaps.dir/util/mp4chaps.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mp4chaps.dir/util/mp4chaps.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tuan/FPT/MP4v2/mp4v2/util/mp4chaps.cpp > CMakeFiles/mp4chaps.dir/util/mp4chaps.cpp.i

CMakeFiles/mp4chaps.dir/util/mp4chaps.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mp4chaps.dir/util/mp4chaps.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tuan/FPT/MP4v2/mp4v2/util/mp4chaps.cpp -o CMakeFiles/mp4chaps.dir/util/mp4chaps.cpp.s

# Object files for target mp4chaps
mp4chaps_OBJECTS = \
"CMakeFiles/mp4chaps.dir/util/mp4chaps.cpp.o"

# External object files for target mp4chaps
mp4chaps_EXTERNAL_OBJECTS =

mp4chaps: CMakeFiles/mp4chaps.dir/util/mp4chaps.cpp.o
mp4chaps: CMakeFiles/mp4chaps.dir/build.make
mp4chaps: libutil.a
mp4chaps: libmp4v2.so.2.1.3
mp4chaps: CMakeFiles/mp4chaps.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/tuan/FPT/MP4v2/mp4v2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable mp4chaps"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/mp4chaps.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/mp4chaps.dir/build: mp4chaps
.PHONY : CMakeFiles/mp4chaps.dir/build

CMakeFiles/mp4chaps.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/mp4chaps.dir/cmake_clean.cmake
.PHONY : CMakeFiles/mp4chaps.dir/clean

CMakeFiles/mp4chaps.dir/depend:
	cd /home/tuan/FPT/MP4v2/mp4v2 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/tuan/FPT/MP4v2/mp4v2 /home/tuan/FPT/MP4v2/mp4v2 /home/tuan/FPT/MP4v2/mp4v2 /home/tuan/FPT/MP4v2/mp4v2 /home/tuan/FPT/MP4v2/mp4v2/CMakeFiles/mp4chaps.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/mp4chaps.dir/depend

