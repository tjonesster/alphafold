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
include tests/CMakeFiles/TestVectorize.dir/depend.make

# Include the progress variables for this target.
include tests/CMakeFiles/TestVectorize.dir/progress.make

# Include the compile flags for this target's objects.
include tests/CMakeFiles/TestVectorize.dir/flags.make

tests/CMakeFiles/TestVectorize.dir/TestVectorize.cpp.o: tests/CMakeFiles/TestVectorize.dir/flags.make
tests/CMakeFiles/TestVectorize.dir/TestVectorize.cpp.o: tests/TestVectorize.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/CMakeFiles/TestVectorize.dir/TestVectorize.cpp.o"
	cd /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/tests && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TestVectorize.dir/TestVectorize.cpp.o -c /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/tests/TestVectorize.cpp

tests/CMakeFiles/TestVectorize.dir/TestVectorize.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TestVectorize.dir/TestVectorize.cpp.i"
	cd /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/tests/TestVectorize.cpp > CMakeFiles/TestVectorize.dir/TestVectorize.cpp.i

tests/CMakeFiles/TestVectorize.dir/TestVectorize.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TestVectorize.dir/TestVectorize.cpp.s"
	cd /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/tests/TestVectorize.cpp -o CMakeFiles/TestVectorize.dir/TestVectorize.cpp.s

# Object files for target TestVectorize
TestVectorize_OBJECTS = \
"CMakeFiles/TestVectorize.dir/TestVectorize.cpp.o"

# External object files for target TestVectorize
TestVectorize_EXTERNAL_OBJECTS =

TestVectorize: tests/CMakeFiles/TestVectorize.dir/TestVectorize.cpp.o
TestVectorize: tests/CMakeFiles/TestVectorize.dir/build.make
TestVectorize: libOpenMM.so.7.5
TestVectorize: /usr/lib/x86_64-linux-gnu/libdl.so
TestVectorize: tests/CMakeFiles/TestVectorize.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../TestVectorize"
	cd /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/TestVectorize.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/CMakeFiles/TestVectorize.dir/build: TestVectorize

.PHONY : tests/CMakeFiles/TestVectorize.dir/build

tests/CMakeFiles/TestVectorize.dir/clean:
	cd /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/tests && $(CMAKE_COMMAND) -P CMakeFiles/TestVectorize.dir/cmake_clean.cmake
.PHONY : tests/CMakeFiles/TestVectorize.dir/clean

tests/CMakeFiles/TestVectorize.dir/depend:
	cd /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1 /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/tests /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1 /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/tests /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/tests/CMakeFiles/TestVectorize.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/CMakeFiles/TestVectorize.dir/depend

