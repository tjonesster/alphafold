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
include plugins/amoeba/platforms/cuda/tests/CMakeFiles/TestCudaAmoebaStretchBendForce.dir/depend.make

# Include the progress variables for this target.
include plugins/amoeba/platforms/cuda/tests/CMakeFiles/TestCudaAmoebaStretchBendForce.dir/progress.make

# Include the compile flags for this target's objects.
include plugins/amoeba/platforms/cuda/tests/CMakeFiles/TestCudaAmoebaStretchBendForce.dir/flags.make

plugins/amoeba/platforms/cuda/tests/CMakeFiles/TestCudaAmoebaStretchBendForce.dir/TestCudaAmoebaStretchBendForce.cpp.o: plugins/amoeba/platforms/cuda/tests/CMakeFiles/TestCudaAmoebaStretchBendForce.dir/flags.make
plugins/amoeba/platforms/cuda/tests/CMakeFiles/TestCudaAmoebaStretchBendForce.dir/TestCudaAmoebaStretchBendForce.cpp.o: plugins/amoeba/platforms/cuda/tests/TestCudaAmoebaStretchBendForce.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object plugins/amoeba/platforms/cuda/tests/CMakeFiles/TestCudaAmoebaStretchBendForce.dir/TestCudaAmoebaStretchBendForce.cpp.o"
	cd /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/plugins/amoeba/platforms/cuda/tests && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TestCudaAmoebaStretchBendForce.dir/TestCudaAmoebaStretchBendForce.cpp.o -c /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/plugins/amoeba/platforms/cuda/tests/TestCudaAmoebaStretchBendForce.cpp

plugins/amoeba/platforms/cuda/tests/CMakeFiles/TestCudaAmoebaStretchBendForce.dir/TestCudaAmoebaStretchBendForce.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TestCudaAmoebaStretchBendForce.dir/TestCudaAmoebaStretchBendForce.cpp.i"
	cd /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/plugins/amoeba/platforms/cuda/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/plugins/amoeba/platforms/cuda/tests/TestCudaAmoebaStretchBendForce.cpp > CMakeFiles/TestCudaAmoebaStretchBendForce.dir/TestCudaAmoebaStretchBendForce.cpp.i

plugins/amoeba/platforms/cuda/tests/CMakeFiles/TestCudaAmoebaStretchBendForce.dir/TestCudaAmoebaStretchBendForce.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TestCudaAmoebaStretchBendForce.dir/TestCudaAmoebaStretchBendForce.cpp.s"
	cd /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/plugins/amoeba/platforms/cuda/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/plugins/amoeba/platforms/cuda/tests/TestCudaAmoebaStretchBendForce.cpp -o CMakeFiles/TestCudaAmoebaStretchBendForce.dir/TestCudaAmoebaStretchBendForce.cpp.s

# Object files for target TestCudaAmoebaStretchBendForce
TestCudaAmoebaStretchBendForce_OBJECTS = \
"CMakeFiles/TestCudaAmoebaStretchBendForce.dir/TestCudaAmoebaStretchBendForce.cpp.o"

# External object files for target TestCudaAmoebaStretchBendForce
TestCudaAmoebaStretchBendForce_EXTERNAL_OBJECTS =

TestCudaAmoebaStretchBendForce: plugins/amoeba/platforms/cuda/tests/CMakeFiles/TestCudaAmoebaStretchBendForce.dir/TestCudaAmoebaStretchBendForce.cpp.o
TestCudaAmoebaStretchBendForce: plugins/amoeba/platforms/cuda/tests/CMakeFiles/TestCudaAmoebaStretchBendForce.dir/build.make
TestCudaAmoebaStretchBendForce: libOpenMMAmoebaCUDA.so
TestCudaAmoebaStretchBendForce: libOpenMMAmoeba.so
TestCudaAmoebaStretchBendForce: libOpenMMCUDA.so
TestCudaAmoebaStretchBendForce: libOpenMM.so.7.5
TestCudaAmoebaStretchBendForce: /usr/lib/x86_64-linux-gnu/libdl.so
TestCudaAmoebaStretchBendForce: /usr/lib/x86_64-linux-gnu/libcuda.so
TestCudaAmoebaStretchBendForce: /usr/lib/x86_64-linux-gnu/libcufft.so
TestCudaAmoebaStretchBendForce: plugins/amoeba/platforms/cuda/tests/CMakeFiles/TestCudaAmoebaStretchBendForce.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../../../../TestCudaAmoebaStretchBendForce"
	cd /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/plugins/amoeba/platforms/cuda/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/TestCudaAmoebaStretchBendForce.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
plugins/amoeba/platforms/cuda/tests/CMakeFiles/TestCudaAmoebaStretchBendForce.dir/build: TestCudaAmoebaStretchBendForce

.PHONY : plugins/amoeba/platforms/cuda/tests/CMakeFiles/TestCudaAmoebaStretchBendForce.dir/build

plugins/amoeba/platforms/cuda/tests/CMakeFiles/TestCudaAmoebaStretchBendForce.dir/clean:
	cd /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/plugins/amoeba/platforms/cuda/tests && $(CMAKE_COMMAND) -P CMakeFiles/TestCudaAmoebaStretchBendForce.dir/cmake_clean.cmake
.PHONY : plugins/amoeba/platforms/cuda/tests/CMakeFiles/TestCudaAmoebaStretchBendForce.dir/clean

plugins/amoeba/platforms/cuda/tests/CMakeFiles/TestCudaAmoebaStretchBendForce.dir/depend:
	cd /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1 /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/plugins/amoeba/platforms/cuda/tests /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1 /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/plugins/amoeba/platforms/cuda/tests /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/plugins/amoeba/platforms/cuda/tests/CMakeFiles/TestCudaAmoebaStretchBendForce.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : plugins/amoeba/platforms/cuda/tests/CMakeFiles/TestCudaAmoebaStretchBendForce.dir/depend

