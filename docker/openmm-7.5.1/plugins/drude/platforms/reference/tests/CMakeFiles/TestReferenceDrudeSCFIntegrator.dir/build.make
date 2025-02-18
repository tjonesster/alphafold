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
include plugins/drude/platforms/reference/tests/CMakeFiles/TestReferenceDrudeSCFIntegrator.dir/depend.make

# Include the progress variables for this target.
include plugins/drude/platforms/reference/tests/CMakeFiles/TestReferenceDrudeSCFIntegrator.dir/progress.make

# Include the compile flags for this target's objects.
include plugins/drude/platforms/reference/tests/CMakeFiles/TestReferenceDrudeSCFIntegrator.dir/flags.make

plugins/drude/platforms/reference/tests/CMakeFiles/TestReferenceDrudeSCFIntegrator.dir/TestReferenceDrudeSCFIntegrator.cpp.o: plugins/drude/platforms/reference/tests/CMakeFiles/TestReferenceDrudeSCFIntegrator.dir/flags.make
plugins/drude/platforms/reference/tests/CMakeFiles/TestReferenceDrudeSCFIntegrator.dir/TestReferenceDrudeSCFIntegrator.cpp.o: plugins/drude/platforms/reference/tests/TestReferenceDrudeSCFIntegrator.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object plugins/drude/platforms/reference/tests/CMakeFiles/TestReferenceDrudeSCFIntegrator.dir/TestReferenceDrudeSCFIntegrator.cpp.o"
	cd /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/plugins/drude/platforms/reference/tests && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TestReferenceDrudeSCFIntegrator.dir/TestReferenceDrudeSCFIntegrator.cpp.o -c /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/plugins/drude/platforms/reference/tests/TestReferenceDrudeSCFIntegrator.cpp

plugins/drude/platforms/reference/tests/CMakeFiles/TestReferenceDrudeSCFIntegrator.dir/TestReferenceDrudeSCFIntegrator.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TestReferenceDrudeSCFIntegrator.dir/TestReferenceDrudeSCFIntegrator.cpp.i"
	cd /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/plugins/drude/platforms/reference/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/plugins/drude/platforms/reference/tests/TestReferenceDrudeSCFIntegrator.cpp > CMakeFiles/TestReferenceDrudeSCFIntegrator.dir/TestReferenceDrudeSCFIntegrator.cpp.i

plugins/drude/platforms/reference/tests/CMakeFiles/TestReferenceDrudeSCFIntegrator.dir/TestReferenceDrudeSCFIntegrator.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TestReferenceDrudeSCFIntegrator.dir/TestReferenceDrudeSCFIntegrator.cpp.s"
	cd /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/plugins/drude/platforms/reference/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/plugins/drude/platforms/reference/tests/TestReferenceDrudeSCFIntegrator.cpp -o CMakeFiles/TestReferenceDrudeSCFIntegrator.dir/TestReferenceDrudeSCFIntegrator.cpp.s

# Object files for target TestReferenceDrudeSCFIntegrator
TestReferenceDrudeSCFIntegrator_OBJECTS = \
"CMakeFiles/TestReferenceDrudeSCFIntegrator.dir/TestReferenceDrudeSCFIntegrator.cpp.o"

# External object files for target TestReferenceDrudeSCFIntegrator
TestReferenceDrudeSCFIntegrator_EXTERNAL_OBJECTS =

TestReferenceDrudeSCFIntegrator: plugins/drude/platforms/reference/tests/CMakeFiles/TestReferenceDrudeSCFIntegrator.dir/TestReferenceDrudeSCFIntegrator.cpp.o
TestReferenceDrudeSCFIntegrator: plugins/drude/platforms/reference/tests/CMakeFiles/TestReferenceDrudeSCFIntegrator.dir/build.make
TestReferenceDrudeSCFIntegrator: libOpenMMDrudeReference.so
TestReferenceDrudeSCFIntegrator: libOpenMMDrude.so
TestReferenceDrudeSCFIntegrator: libOpenMM.so.7.5
TestReferenceDrudeSCFIntegrator: /usr/lib/x86_64-linux-gnu/libdl.so
TestReferenceDrudeSCFIntegrator: plugins/drude/platforms/reference/tests/CMakeFiles/TestReferenceDrudeSCFIntegrator.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../../../../TestReferenceDrudeSCFIntegrator"
	cd /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/plugins/drude/platforms/reference/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/TestReferenceDrudeSCFIntegrator.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
plugins/drude/platforms/reference/tests/CMakeFiles/TestReferenceDrudeSCFIntegrator.dir/build: TestReferenceDrudeSCFIntegrator

.PHONY : plugins/drude/platforms/reference/tests/CMakeFiles/TestReferenceDrudeSCFIntegrator.dir/build

plugins/drude/platforms/reference/tests/CMakeFiles/TestReferenceDrudeSCFIntegrator.dir/clean:
	cd /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/plugins/drude/platforms/reference/tests && $(CMAKE_COMMAND) -P CMakeFiles/TestReferenceDrudeSCFIntegrator.dir/cmake_clean.cmake
.PHONY : plugins/drude/platforms/reference/tests/CMakeFiles/TestReferenceDrudeSCFIntegrator.dir/clean

plugins/drude/platforms/reference/tests/CMakeFiles/TestReferenceDrudeSCFIntegrator.dir/depend:
	cd /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1 /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/plugins/drude/platforms/reference/tests /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1 /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/plugins/drude/platforms/reference/tests /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/plugins/drude/platforms/reference/tests/CMakeFiles/TestReferenceDrudeSCFIntegrator.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : plugins/drude/platforms/reference/tests/CMakeFiles/TestReferenceDrudeSCFIntegrator.dir/depend

