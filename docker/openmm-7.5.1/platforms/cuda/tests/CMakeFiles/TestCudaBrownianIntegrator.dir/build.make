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
include platforms/cuda/tests/CMakeFiles/TestCudaBrownianIntegrator.dir/depend.make

# Include the progress variables for this target.
include platforms/cuda/tests/CMakeFiles/TestCudaBrownianIntegrator.dir/progress.make

# Include the compile flags for this target's objects.
include platforms/cuda/tests/CMakeFiles/TestCudaBrownianIntegrator.dir/flags.make

platforms/cuda/tests/CMakeFiles/TestCudaBrownianIntegrator.dir/TestCudaBrownianIntegrator.cpp.o: platforms/cuda/tests/CMakeFiles/TestCudaBrownianIntegrator.dir/flags.make
platforms/cuda/tests/CMakeFiles/TestCudaBrownianIntegrator.dir/TestCudaBrownianIntegrator.cpp.o: platforms/cuda/tests/TestCudaBrownianIntegrator.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object platforms/cuda/tests/CMakeFiles/TestCudaBrownianIntegrator.dir/TestCudaBrownianIntegrator.cpp.o"
	cd /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/platforms/cuda/tests && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TestCudaBrownianIntegrator.dir/TestCudaBrownianIntegrator.cpp.o -c /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/platforms/cuda/tests/TestCudaBrownianIntegrator.cpp

platforms/cuda/tests/CMakeFiles/TestCudaBrownianIntegrator.dir/TestCudaBrownianIntegrator.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TestCudaBrownianIntegrator.dir/TestCudaBrownianIntegrator.cpp.i"
	cd /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/platforms/cuda/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/platforms/cuda/tests/TestCudaBrownianIntegrator.cpp > CMakeFiles/TestCudaBrownianIntegrator.dir/TestCudaBrownianIntegrator.cpp.i

platforms/cuda/tests/CMakeFiles/TestCudaBrownianIntegrator.dir/TestCudaBrownianIntegrator.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TestCudaBrownianIntegrator.dir/TestCudaBrownianIntegrator.cpp.s"
	cd /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/platforms/cuda/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/platforms/cuda/tests/TestCudaBrownianIntegrator.cpp -o CMakeFiles/TestCudaBrownianIntegrator.dir/TestCudaBrownianIntegrator.cpp.s

# Object files for target TestCudaBrownianIntegrator
TestCudaBrownianIntegrator_OBJECTS = \
"CMakeFiles/TestCudaBrownianIntegrator.dir/TestCudaBrownianIntegrator.cpp.o"

# External object files for target TestCudaBrownianIntegrator
TestCudaBrownianIntegrator_EXTERNAL_OBJECTS =

TestCudaBrownianIntegrator: platforms/cuda/tests/CMakeFiles/TestCudaBrownianIntegrator.dir/TestCudaBrownianIntegrator.cpp.o
TestCudaBrownianIntegrator: platforms/cuda/tests/CMakeFiles/TestCudaBrownianIntegrator.dir/build.make
TestCudaBrownianIntegrator: libOpenMMCUDA.so
TestCudaBrownianIntegrator: libOpenMM.so.7.5
TestCudaBrownianIntegrator: /usr/lib/x86_64-linux-gnu/libdl.so
TestCudaBrownianIntegrator: /usr/lib/x86_64-linux-gnu/libcuda.so
TestCudaBrownianIntegrator: /usr/lib/x86_64-linux-gnu/libcufft.so
TestCudaBrownianIntegrator: platforms/cuda/tests/CMakeFiles/TestCudaBrownianIntegrator.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../../TestCudaBrownianIntegrator"
	cd /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/platforms/cuda/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/TestCudaBrownianIntegrator.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
platforms/cuda/tests/CMakeFiles/TestCudaBrownianIntegrator.dir/build: TestCudaBrownianIntegrator

.PHONY : platforms/cuda/tests/CMakeFiles/TestCudaBrownianIntegrator.dir/build

platforms/cuda/tests/CMakeFiles/TestCudaBrownianIntegrator.dir/clean:
	cd /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/platforms/cuda/tests && $(CMAKE_COMMAND) -P CMakeFiles/TestCudaBrownianIntegrator.dir/cmake_clean.cmake
.PHONY : platforms/cuda/tests/CMakeFiles/TestCudaBrownianIntegrator.dir/clean

platforms/cuda/tests/CMakeFiles/TestCudaBrownianIntegrator.dir/depend:
	cd /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1 /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/platforms/cuda/tests /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1 /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/platforms/cuda/tests /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/platforms/cuda/tests/CMakeFiles/TestCudaBrownianIntegrator.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : platforms/cuda/tests/CMakeFiles/TestCudaBrownianIntegrator.dir/depend

