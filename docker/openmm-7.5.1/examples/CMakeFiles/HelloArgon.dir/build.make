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
CMAKE_SOURCE_DIR = /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1

# Include any dependencies generated for this target.
include examples/CMakeFiles/HelloArgon.dir/depend.make

# Include the progress variables for this target.
include examples/CMakeFiles/HelloArgon.dir/progress.make

# Include the compile flags for this target's objects.
include examples/CMakeFiles/HelloArgon.dir/flags.make

examples/CMakeFiles/HelloArgon.dir/HelloArgon.cpp.o: examples/CMakeFiles/HelloArgon.dir/flags.make
examples/CMakeFiles/HelloArgon.dir/HelloArgon.cpp.o: examples/HelloArgon.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object examples/CMakeFiles/HelloArgon.dir/HelloArgon.cpp.o"
	cd /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/examples && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/HelloArgon.dir/HelloArgon.cpp.o -c /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/examples/HelloArgon.cpp

examples/CMakeFiles/HelloArgon.dir/HelloArgon.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/HelloArgon.dir/HelloArgon.cpp.i"
	cd /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/examples/HelloArgon.cpp > CMakeFiles/HelloArgon.dir/HelloArgon.cpp.i

examples/CMakeFiles/HelloArgon.dir/HelloArgon.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/HelloArgon.dir/HelloArgon.cpp.s"
	cd /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/examples/HelloArgon.cpp -o CMakeFiles/HelloArgon.dir/HelloArgon.cpp.s

# Object files for target HelloArgon
HelloArgon_OBJECTS = \
"CMakeFiles/HelloArgon.dir/HelloArgon.cpp.o"

# External object files for target HelloArgon
HelloArgon_EXTERNAL_OBJECTS =

HelloArgon: examples/CMakeFiles/HelloArgon.dir/HelloArgon.cpp.o
HelloArgon: examples/CMakeFiles/HelloArgon.dir/build.make
HelloArgon: libOpenMM.so.7.5
HelloArgon: /usr/lib/x86_64-linux-gnu/libdl.so
HelloArgon: examples/CMakeFiles/HelloArgon.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../HelloArgon"
	cd /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/HelloArgon.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/CMakeFiles/HelloArgon.dir/build: HelloArgon

.PHONY : examples/CMakeFiles/HelloArgon.dir/build

examples/CMakeFiles/HelloArgon.dir/clean:
	cd /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/examples && $(CMAKE_COMMAND) -P CMakeFiles/HelloArgon.dir/cmake_clean.cmake
.PHONY : examples/CMakeFiles/HelloArgon.dir/clean

examples/CMakeFiles/HelloArgon.dir/depend:
	cd /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1 /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/examples /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1 /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/examples /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/examples/CMakeFiles/HelloArgon.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/CMakeFiles/HelloArgon.dir/depend

