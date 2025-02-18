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
include platforms/cuda/tests/CMakeFiles/TestCudaCMMotionRemover.dir/depend.make

# Include the progress variables for this target.
include platforms/cuda/tests/CMakeFiles/TestCudaCMMotionRemover.dir/progress.make

# Include the compile flags for this target's objects.
include platforms/cuda/tests/CMakeFiles/TestCudaCMMotionRemover.dir/flags.make

platforms/cuda/tests/CMakeFiles/TestCudaCMMotionRemover.dir/TestCudaCMMotionRemover.cpp.o: platforms/cuda/tests/CMakeFiles/TestCudaCMMotionRemover.dir/flags.make
platforms/cuda/tests/CMakeFiles/TestCudaCMMotionRemover.dir/TestCudaCMMotionRemover.cpp.o: platforms/cuda/tests/TestCudaCMMotionRemover.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object platforms/cuda/tests/CMakeFiles/TestCudaCMMotionRemover.dir/TestCudaCMMotionRemover.cpp.o"
	cd /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/platforms/cuda/tests && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TestCudaCMMotionRemover.dir/TestCudaCMMotionRemover.cpp.o -c /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/platforms/cuda/tests/TestCudaCMMotionRemover.cpp

platforms/cuda/tests/CMakeFiles/TestCudaCMMotionRemover.dir/TestCudaCMMotionRemover.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TestCudaCMMotionRemover.dir/TestCudaCMMotionRemover.cpp.i"
	cd /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/platforms/cuda/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/platforms/cuda/tests/TestCudaCMMotionRemover.cpp > CMakeFiles/TestCudaCMMotionRemover.dir/TestCudaCMMotionRemover.cpp.i

platforms/cuda/tests/CMakeFiles/TestCudaCMMotionRemover.dir/TestCudaCMMotionRemover.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TestCudaCMMotionRemover.dir/TestCudaCMMotionRemover.cpp.s"
	cd /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/platforms/cuda/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/platforms/cuda/tests/TestCudaCMMotionRemover.cpp -o CMakeFiles/TestCudaCMMotionRemover.dir/TestCudaCMMotionRemover.cpp.s

# Object files for target TestCudaCMMotionRemover
TestCudaCMMotionRemover_OBJECTS = \
"CMakeFiles/TestCudaCMMotionRemover.dir/TestCudaCMMotionRemover.cpp.o"

# External object files for target TestCudaCMMotionRemover
TestCudaCMMotionRemover_EXTERNAL_OBJECTS =

TestCudaCMMotionRemover: platforms/cuda/tests/CMakeFiles/TestCudaCMMotionRemover.dir/TestCudaCMMotionRemover.cpp.o
TestCudaCMMotionRemover: platforms/cuda/tests/CMakeFiles/TestCudaCMMotionRemover.dir/build.make
TestCudaCMMotionRemover: libOpenMMCUDA.so
TestCudaCMMotionRemover: libOpenMM.so.7.5
TestCudaCMMotionRemover: /usr/lib/x86_64-linux-gnu/libdl.so
TestCudaCMMotionRemover: /usr/lib/x86_64-linux-gnu/libcuda.so
TestCudaCMMotionRemover: /usr/lib/x86_64-linux-gnu/libcufft.so
TestCudaCMMotionRemover: platforms/cuda/tests/CMakeFiles/TestCudaCMMotionRemover.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../../TestCudaCMMotionRemover"
	cd /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/platforms/cuda/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/TestCudaCMMotionRemover.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
platforms/cuda/tests/CMakeFiles/TestCudaCMMotionRemover.dir/build: TestCudaCMMotionRemover

.PHONY : platforms/cuda/tests/CMakeFiles/TestCudaCMMotionRemover.dir/build

platforms/cuda/tests/CMakeFiles/TestCudaCMMotionRemover.dir/clean:
	cd /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/platforms/cuda/tests && $(CMAKE_COMMAND) -P CMakeFiles/TestCudaCMMotionRemover.dir/cmake_clean.cmake
.PHONY : platforms/cuda/tests/CMakeFiles/TestCudaCMMotionRemover.dir/clean

platforms/cuda/tests/CMakeFiles/TestCudaCMMotionRemover.dir/depend:
	cd /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1 /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/platforms/cuda/tests /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1 /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/platforms/cuda/tests /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/platforms/cuda/tests/CMakeFiles/TestCudaCMMotionRemover.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : platforms/cuda/tests/CMakeFiles/TestCudaCMMotionRemover.dir/depend

