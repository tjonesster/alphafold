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
include platforms/reference/tests/CMakeFiles/TestReferenceCustomIntegrator.dir/depend.make

# Include the progress variables for this target.
include platforms/reference/tests/CMakeFiles/TestReferenceCustomIntegrator.dir/progress.make

# Include the compile flags for this target's objects.
include platforms/reference/tests/CMakeFiles/TestReferenceCustomIntegrator.dir/flags.make

platforms/reference/tests/CMakeFiles/TestReferenceCustomIntegrator.dir/TestReferenceCustomIntegrator.cpp.o: platforms/reference/tests/CMakeFiles/TestReferenceCustomIntegrator.dir/flags.make
platforms/reference/tests/CMakeFiles/TestReferenceCustomIntegrator.dir/TestReferenceCustomIntegrator.cpp.o: platforms/reference/tests/TestReferenceCustomIntegrator.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object platforms/reference/tests/CMakeFiles/TestReferenceCustomIntegrator.dir/TestReferenceCustomIntegrator.cpp.o"
	cd /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/platforms/reference/tests && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TestReferenceCustomIntegrator.dir/TestReferenceCustomIntegrator.cpp.o -c /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/platforms/reference/tests/TestReferenceCustomIntegrator.cpp

platforms/reference/tests/CMakeFiles/TestReferenceCustomIntegrator.dir/TestReferenceCustomIntegrator.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TestReferenceCustomIntegrator.dir/TestReferenceCustomIntegrator.cpp.i"
	cd /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/platforms/reference/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/platforms/reference/tests/TestReferenceCustomIntegrator.cpp > CMakeFiles/TestReferenceCustomIntegrator.dir/TestReferenceCustomIntegrator.cpp.i

platforms/reference/tests/CMakeFiles/TestReferenceCustomIntegrator.dir/TestReferenceCustomIntegrator.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TestReferenceCustomIntegrator.dir/TestReferenceCustomIntegrator.cpp.s"
	cd /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/platforms/reference/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/platforms/reference/tests/TestReferenceCustomIntegrator.cpp -o CMakeFiles/TestReferenceCustomIntegrator.dir/TestReferenceCustomIntegrator.cpp.s

# Object files for target TestReferenceCustomIntegrator
TestReferenceCustomIntegrator_OBJECTS = \
"CMakeFiles/TestReferenceCustomIntegrator.dir/TestReferenceCustomIntegrator.cpp.o"

# External object files for target TestReferenceCustomIntegrator
TestReferenceCustomIntegrator_EXTERNAL_OBJECTS =

TestReferenceCustomIntegrator: platforms/reference/tests/CMakeFiles/TestReferenceCustomIntegrator.dir/TestReferenceCustomIntegrator.cpp.o
TestReferenceCustomIntegrator: platforms/reference/tests/CMakeFiles/TestReferenceCustomIntegrator.dir/build.make
TestReferenceCustomIntegrator: libOpenMM.so.7.5
TestReferenceCustomIntegrator: /usr/lib/x86_64-linux-gnu/libdl.so
TestReferenceCustomIntegrator: platforms/reference/tests/CMakeFiles/TestReferenceCustomIntegrator.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../../TestReferenceCustomIntegrator"
	cd /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/platforms/reference/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/TestReferenceCustomIntegrator.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
platforms/reference/tests/CMakeFiles/TestReferenceCustomIntegrator.dir/build: TestReferenceCustomIntegrator

.PHONY : platforms/reference/tests/CMakeFiles/TestReferenceCustomIntegrator.dir/build

platforms/reference/tests/CMakeFiles/TestReferenceCustomIntegrator.dir/clean:
	cd /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/platforms/reference/tests && $(CMAKE_COMMAND) -P CMakeFiles/TestReferenceCustomIntegrator.dir/cmake_clean.cmake
.PHONY : platforms/reference/tests/CMakeFiles/TestReferenceCustomIntegrator.dir/clean

platforms/reference/tests/CMakeFiles/TestReferenceCustomIntegrator.dir/depend:
	cd /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1 /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/platforms/reference/tests /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1 /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/platforms/reference/tests /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/platforms/reference/tests/CMakeFiles/TestReferenceCustomIntegrator.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : platforms/reference/tests/CMakeFiles/TestReferenceCustomIntegrator.dir/depend

