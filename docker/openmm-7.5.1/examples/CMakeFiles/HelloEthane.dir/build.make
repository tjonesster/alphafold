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
include examples/CMakeFiles/HelloEthane.dir/depend.make

# Include the progress variables for this target.
include examples/CMakeFiles/HelloEthane.dir/progress.make

# Include the compile flags for this target's objects.
include examples/CMakeFiles/HelloEthane.dir/flags.make

examples/CMakeFiles/HelloEthane.dir/HelloEthane.cpp.o: examples/CMakeFiles/HelloEthane.dir/flags.make
examples/CMakeFiles/HelloEthane.dir/HelloEthane.cpp.o: examples/HelloEthane.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object examples/CMakeFiles/HelloEthane.dir/HelloEthane.cpp.o"
	cd /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/examples && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/HelloEthane.dir/HelloEthane.cpp.o -c /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/examples/HelloEthane.cpp

examples/CMakeFiles/HelloEthane.dir/HelloEthane.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/HelloEthane.dir/HelloEthane.cpp.i"
	cd /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/examples/HelloEthane.cpp > CMakeFiles/HelloEthane.dir/HelloEthane.cpp.i

examples/CMakeFiles/HelloEthane.dir/HelloEthane.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/HelloEthane.dir/HelloEthane.cpp.s"
	cd /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/examples/HelloEthane.cpp -o CMakeFiles/HelloEthane.dir/HelloEthane.cpp.s

# Object files for target HelloEthane
HelloEthane_OBJECTS = \
"CMakeFiles/HelloEthane.dir/HelloEthane.cpp.o"

# External object files for target HelloEthane
HelloEthane_EXTERNAL_OBJECTS =

HelloEthane: examples/CMakeFiles/HelloEthane.dir/HelloEthane.cpp.o
HelloEthane: examples/CMakeFiles/HelloEthane.dir/build.make
HelloEthane: libOpenMM.so.7.5
HelloEthane: /usr/lib/x86_64-linux-gnu/libdl.so
HelloEthane: examples/CMakeFiles/HelloEthane.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../HelloEthane"
	cd /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/HelloEthane.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/CMakeFiles/HelloEthane.dir/build: HelloEthane

.PHONY : examples/CMakeFiles/HelloEthane.dir/build

examples/CMakeFiles/HelloEthane.dir/clean:
	cd /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/examples && $(CMAKE_COMMAND) -P CMakeFiles/HelloEthane.dir/cmake_clean.cmake
.PHONY : examples/CMakeFiles/HelloEthane.dir/clean

examples/CMakeFiles/HelloEthane.dir/depend:
	cd /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1 /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/examples /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1 /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/examples /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/examples/CMakeFiles/HelloEthane.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/CMakeFiles/HelloEthane.dir/depend

