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
include CMakeFiles/util.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/util.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/util.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/util.dir/flags.make

CMakeFiles/util.dir/libutil/crc.cpp.o: CMakeFiles/util.dir/flags.make
CMakeFiles/util.dir/libutil/crc.cpp.o: libutil/crc.cpp
CMakeFiles/util.dir/libutil/crc.cpp.o: CMakeFiles/util.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tuan/FPT/MP4v2/mp4v2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/util.dir/libutil/crc.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/util.dir/libutil/crc.cpp.o -MF CMakeFiles/util.dir/libutil/crc.cpp.o.d -o CMakeFiles/util.dir/libutil/crc.cpp.o -c /home/tuan/FPT/MP4v2/mp4v2/libutil/crc.cpp

CMakeFiles/util.dir/libutil/crc.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/util.dir/libutil/crc.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tuan/FPT/MP4v2/mp4v2/libutil/crc.cpp > CMakeFiles/util.dir/libutil/crc.cpp.i

CMakeFiles/util.dir/libutil/crc.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/util.dir/libutil/crc.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tuan/FPT/MP4v2/mp4v2/libutil/crc.cpp -o CMakeFiles/util.dir/libutil/crc.cpp.s

CMakeFiles/util.dir/libutil/Timecode.cpp.o: CMakeFiles/util.dir/flags.make
CMakeFiles/util.dir/libutil/Timecode.cpp.o: libutil/Timecode.cpp
CMakeFiles/util.dir/libutil/Timecode.cpp.o: CMakeFiles/util.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tuan/FPT/MP4v2/mp4v2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/util.dir/libutil/Timecode.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/util.dir/libutil/Timecode.cpp.o -MF CMakeFiles/util.dir/libutil/Timecode.cpp.o.d -o CMakeFiles/util.dir/libutil/Timecode.cpp.o -c /home/tuan/FPT/MP4v2/mp4v2/libutil/Timecode.cpp

CMakeFiles/util.dir/libutil/Timecode.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/util.dir/libutil/Timecode.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tuan/FPT/MP4v2/mp4v2/libutil/Timecode.cpp > CMakeFiles/util.dir/libutil/Timecode.cpp.i

CMakeFiles/util.dir/libutil/Timecode.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/util.dir/libutil/Timecode.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tuan/FPT/MP4v2/mp4v2/libutil/Timecode.cpp -o CMakeFiles/util.dir/libutil/Timecode.cpp.s

# Object files for target util
util_OBJECTS = \
"CMakeFiles/util.dir/libutil/crc.cpp.o" \
"CMakeFiles/util.dir/libutil/Timecode.cpp.o"

# External object files for target util
util_EXTERNAL_OBJECTS =

libutil.a: CMakeFiles/util.dir/libutil/crc.cpp.o
libutil.a: CMakeFiles/util.dir/libutil/Timecode.cpp.o
libutil.a: CMakeFiles/util.dir/build.make
libutil.a: CMakeFiles/util.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/tuan/FPT/MP4v2/mp4v2/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX static library libutil.a"
	$(CMAKE_COMMAND) -P CMakeFiles/util.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/util.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/util.dir/build: libutil.a
.PHONY : CMakeFiles/util.dir/build

CMakeFiles/util.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/util.dir/cmake_clean.cmake
.PHONY : CMakeFiles/util.dir/clean

CMakeFiles/util.dir/depend:
	cd /home/tuan/FPT/MP4v2/mp4v2 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/tuan/FPT/MP4v2/mp4v2 /home/tuan/FPT/MP4v2/mp4v2 /home/tuan/FPT/MP4v2/mp4v2 /home/tuan/FPT/MP4v2/mp4v2 /home/tuan/FPT/MP4v2/mp4v2/CMakeFiles/util.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/util.dir/depend
