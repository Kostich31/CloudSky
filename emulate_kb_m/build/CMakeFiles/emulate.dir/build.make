# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
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
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/viktor/Projects/Team_project/CloudSky/emulate_kb_m

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/viktor/Projects/Team_project/CloudSky/emulate_kb_m/build

# Include any dependencies generated for this target.
include CMakeFiles/emulate.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/emulate.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/emulate.dir/flags.make

CMakeFiles/emulate.dir/project/src/emulate.cpp.o: CMakeFiles/emulate.dir/flags.make
CMakeFiles/emulate.dir/project/src/emulate.cpp.o: ../project/src/emulate.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/viktor/Projects/Team_project/CloudSky/emulate_kb_m/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/emulate.dir/project/src/emulate.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/emulate.dir/project/src/emulate.cpp.o -c /home/viktor/Projects/Team_project/CloudSky/emulate_kb_m/project/src/emulate.cpp

CMakeFiles/emulate.dir/project/src/emulate.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/emulate.dir/project/src/emulate.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/viktor/Projects/Team_project/CloudSky/emulate_kb_m/project/src/emulate.cpp > CMakeFiles/emulate.dir/project/src/emulate.cpp.i

CMakeFiles/emulate.dir/project/src/emulate.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/emulate.dir/project/src/emulate.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/viktor/Projects/Team_project/CloudSky/emulate_kb_m/project/src/emulate.cpp -o CMakeFiles/emulate.dir/project/src/emulate.cpp.s

# Object files for target emulate
emulate_OBJECTS = \
"CMakeFiles/emulate.dir/project/src/emulate.cpp.o"

# External object files for target emulate
emulate_EXTERNAL_OBJECTS =

emulate: CMakeFiles/emulate.dir/project/src/emulate.cpp.o
emulate: CMakeFiles/emulate.dir/build.make
emulate: CMakeFiles/emulate.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/viktor/Projects/Team_project/CloudSky/emulate_kb_m/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable emulate"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/emulate.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/emulate.dir/build: emulate

.PHONY : CMakeFiles/emulate.dir/build

CMakeFiles/emulate.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/emulate.dir/cmake_clean.cmake
.PHONY : CMakeFiles/emulate.dir/clean

CMakeFiles/emulate.dir/depend:
	cd /home/viktor/Projects/Team_project/CloudSky/emulate_kb_m/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/viktor/Projects/Team_project/CloudSky/emulate_kb_m /home/viktor/Projects/Team_project/CloudSky/emulate_kb_m /home/viktor/Projects/Team_project/CloudSky/emulate_kb_m/build /home/viktor/Projects/Team_project/CloudSky/emulate_kb_m/build /home/viktor/Projects/Team_project/CloudSky/emulate_kb_m/build/CMakeFiles/emulate.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/emulate.dir/depend
