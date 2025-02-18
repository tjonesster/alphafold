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
include platforms/reference/tests/CMakeFiles/TestReferenceVirtualSites.dir/depend.make

# Include the progress variables for this target.
include platforms/reference/tests/CMakeFiles/TestReferenceVirtualSites.dir/progress.make

# Include the compile flags for this target's objects.
include platforms/reference/tests/CMakeFiles/TestReferenceVirtualSites.dir/flags.make

platforms/reference/tests/CMakeFiles/TestReferenceVirtualSites.dir/TestReferenceVirtualSites.cpp.o: platforms/reference/tests/CMakeFiles/TestReferenceVirtualSites.dir/flags.make
platforms/reference/tests/CMakeFiles/TestReferenceVirtualSites.dir/TestReferenceVirtualSites.cpp.o: platforms/reference/tests/TestReferenceVirtualSites.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object platforms/reference/tests/CMakeFiles/TestReferenceVirtualSites.dir/TestReferenceVirtualSites.cpp.o"
	cd /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/platforms/reference/tests && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TestReferenceVirtualSites.dir/TestReferenceVirtualSites.cpp.o -c /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/platforms/reference/tests/TestReferenceVirtualSites.cpp

platforms/reference/tests/CMakeFiles/TestReferenceVirtualSites.dir/TestReferenceVirtualSites.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TestReferenceVirtualSites.dir/TestReferenceVirtualSites.cpp.i"
	cd /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/platforms/reference/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/platforms/reference/tests/TestReferenceVirtualSites.cpp > CMakeFiles/TestReferenceVirtualSites.dir/TestReferenceVirtualSites.cpp.i

platforms/reference/tests/CMakeFiles/TestReferenceVirtualSites.dir/TestReferenceVirtualSites.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TestReferenceVirtualSites.dir/TestReferenceVirtualSites.cpp.s"
	cd /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/platforms/reference/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/platforms/reference/tests/TestReferenceVirtualSites.cpp -o CMakeFiles/TestReferenceVirtualSites.dir/TestReferenceVirtualSites.cpp.s

# Object files for target TestReferenceVirtualSites
TestReferenceVirtualSites_OBJECTS = \
"CMakeFiles/TestReferenceVirtualSites.dir/TestReferenceVirtualSites.cpp.o"

# External object files for target TestReferenceVirtualSites
TestReferenceVirtualSites_EXTERNAL_OBJECTS =

TestReferenceVirtualSites: platforms/reference/tests/CMakeFiles/TestReferenceVirtualSites.dir/TestReferenceVirtualSites.cpp.o
TestReferenceVirtualSites: platforms/reference/tests/CMakeFiles/TestReferenceVirtualSites.dir/build.make
TestReferenceVirtualSites: libOpenMM.so.7.5
TestReferenceVirtualSites: /usr/lib/x86_64-linux-gnu/libdl.so
TestReferenceVirtualSites: platforms/reference/tests/CMakeFiles/TestReferenceVirtualSites.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../../TestReferenceVirtualSites"
	cd /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/platforms/reference/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/TestReferenceVirtualSites.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
platforms/reference/tests/CMakeFiles/TestReferenceVirtualSites.dir/build: TestReferenceVirtualSites

.PHONY : platforms/reference/tests/CMakeFiles/TestReferenceVirtualSites.dir/build

platforms/reference/tests/CMakeFiles/TestReferenceVirtualSites.dir/clean:
	cd /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/platforms/reference/tests && $(CMAKE_COMMAND) -P CMakeFiles/TestReferenceVirtualSites.dir/cmake_clean.cmake
.PHONY : platforms/reference/tests/CMakeFiles/TestReferenceVirtualSites.dir/clean

platforms/reference/tests/CMakeFiles/TestReferenceVirtualSites.dir/depend:
	cd /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1 /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/platforms/reference/tests /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1 /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/platforms/reference/tests /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/platforms/reference/tests/CMakeFiles/TestReferenceVirtualSites.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : platforms/reference/tests/CMakeFiles/TestReferenceVirtualSites.dir/depend

