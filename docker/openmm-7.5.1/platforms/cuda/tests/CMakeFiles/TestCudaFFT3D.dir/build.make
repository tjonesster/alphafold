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
include platforms/cuda/tests/CMakeFiles/TestCudaFFT3D.dir/depend.make

# Include the progress variables for this target.
include platforms/cuda/tests/CMakeFiles/TestCudaFFT3D.dir/progress.make

# Include the compile flags for this target's objects.
include platforms/cuda/tests/CMakeFiles/TestCudaFFT3D.dir/flags.make

platforms/cuda/tests/CMakeFiles/TestCudaFFT3D.dir/TestCudaFFT3D.cpp.o: platforms/cuda/tests/CMakeFiles/TestCudaFFT3D.dir/flags.make
platforms/cuda/tests/CMakeFiles/TestCudaFFT3D.dir/TestCudaFFT3D.cpp.o: platforms/cuda/tests/TestCudaFFT3D.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object platforms/cuda/tests/CMakeFiles/TestCudaFFT3D.dir/TestCudaFFT3D.cpp.o"
	cd /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/platforms/cuda/tests && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TestCudaFFT3D.dir/TestCudaFFT3D.cpp.o -c /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/platforms/cuda/tests/TestCudaFFT3D.cpp

platforms/cuda/tests/CMakeFiles/TestCudaFFT3D.dir/TestCudaFFT3D.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TestCudaFFT3D.dir/TestCudaFFT3D.cpp.i"
	cd /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/platforms/cuda/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/platforms/cuda/tests/TestCudaFFT3D.cpp > CMakeFiles/TestCudaFFT3D.dir/TestCudaFFT3D.cpp.i

platforms/cuda/tests/CMakeFiles/TestCudaFFT3D.dir/TestCudaFFT3D.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TestCudaFFT3D.dir/TestCudaFFT3D.cpp.s"
	cd /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/platforms/cuda/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/platforms/cuda/tests/TestCudaFFT3D.cpp -o CMakeFiles/TestCudaFFT3D.dir/TestCudaFFT3D.cpp.s

# Object files for target TestCudaFFT3D
TestCudaFFT3D_OBJECTS = \
"CMakeFiles/TestCudaFFT3D.dir/TestCudaFFT3D.cpp.o"

# External object files for target TestCudaFFT3D
TestCudaFFT3D_EXTERNAL_OBJECTS =

TestCudaFFT3D: platforms/cuda/tests/CMakeFiles/TestCudaFFT3D.dir/TestCudaFFT3D.cpp.o
TestCudaFFT3D: platforms/cuda/tests/CMakeFiles/TestCudaFFT3D.dir/build.make
TestCudaFFT3D: libOpenMMCUDA.so
TestCudaFFT3D: libOpenMM.so.7.5
TestCudaFFT3D: /usr/lib/x86_64-linux-gnu/libdl.so
TestCudaFFT3D: /usr/lib/x86_64-linux-gnu/libcuda.so
TestCudaFFT3D: /usr/lib/x86_64-linux-gnu/libcufft.so
TestCudaFFT3D: platforms/cuda/tests/CMakeFiles/TestCudaFFT3D.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../../TestCudaFFT3D"
	cd /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/platforms/cuda/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/TestCudaFFT3D.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
platforms/cuda/tests/CMakeFiles/TestCudaFFT3D.dir/build: TestCudaFFT3D

.PHONY : platforms/cuda/tests/CMakeFiles/TestCudaFFT3D.dir/build

platforms/cuda/tests/CMakeFiles/TestCudaFFT3D.dir/clean:
	cd /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/platforms/cuda/tests && $(CMAKE_COMMAND) -P CMakeFiles/TestCudaFFT3D.dir/cmake_clean.cmake
.PHONY : platforms/cuda/tests/CMakeFiles/TestCudaFFT3D.dir/clean

platforms/cuda/tests/CMakeFiles/TestCudaFFT3D.dir/depend:
	cd /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1 /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/platforms/cuda/tests /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1 /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/platforms/cuda/tests /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/platforms/cuda/tests/CMakeFiles/TestCudaFFT3D.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : platforms/cuda/tests/CMakeFiles/TestCudaFFT3D.dir/depend

