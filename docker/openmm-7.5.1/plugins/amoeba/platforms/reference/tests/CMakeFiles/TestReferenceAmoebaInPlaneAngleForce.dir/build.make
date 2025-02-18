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
include plugins/amoeba/platforms/reference/tests/CMakeFiles/TestReferenceAmoebaInPlaneAngleForce.dir/depend.make

# Include the progress variables for this target.
include plugins/amoeba/platforms/reference/tests/CMakeFiles/TestReferenceAmoebaInPlaneAngleForce.dir/progress.make

# Include the compile flags for this target's objects.
include plugins/amoeba/platforms/reference/tests/CMakeFiles/TestReferenceAmoebaInPlaneAngleForce.dir/flags.make

plugins/amoeba/platforms/reference/tests/CMakeFiles/TestReferenceAmoebaInPlaneAngleForce.dir/TestReferenceAmoebaInPlaneAngleForce.cpp.o: plugins/amoeba/platforms/reference/tests/CMakeFiles/TestReferenceAmoebaInPlaneAngleForce.dir/flags.make
plugins/amoeba/platforms/reference/tests/CMakeFiles/TestReferenceAmoebaInPlaneAngleForce.dir/TestReferenceAmoebaInPlaneAngleForce.cpp.o: plugins/amoeba/platforms/reference/tests/TestReferenceAmoebaInPlaneAngleForce.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object plugins/amoeba/platforms/reference/tests/CMakeFiles/TestReferenceAmoebaInPlaneAngleForce.dir/TestReferenceAmoebaInPlaneAngleForce.cpp.o"
	cd /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/plugins/amoeba/platforms/reference/tests && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TestReferenceAmoebaInPlaneAngleForce.dir/TestReferenceAmoebaInPlaneAngleForce.cpp.o -c /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/plugins/amoeba/platforms/reference/tests/TestReferenceAmoebaInPlaneAngleForce.cpp

plugins/amoeba/platforms/reference/tests/CMakeFiles/TestReferenceAmoebaInPlaneAngleForce.dir/TestReferenceAmoebaInPlaneAngleForce.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TestReferenceAmoebaInPlaneAngleForce.dir/TestReferenceAmoebaInPlaneAngleForce.cpp.i"
	cd /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/plugins/amoeba/platforms/reference/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/plugins/amoeba/platforms/reference/tests/TestReferenceAmoebaInPlaneAngleForce.cpp > CMakeFiles/TestReferenceAmoebaInPlaneAngleForce.dir/TestReferenceAmoebaInPlaneAngleForce.cpp.i

plugins/amoeba/platforms/reference/tests/CMakeFiles/TestReferenceAmoebaInPlaneAngleForce.dir/TestReferenceAmoebaInPlaneAngleForce.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TestReferenceAmoebaInPlaneAngleForce.dir/TestReferenceAmoebaInPlaneAngleForce.cpp.s"
	cd /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/plugins/amoeba/platforms/reference/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/plugins/amoeba/platforms/reference/tests/TestReferenceAmoebaInPlaneAngleForce.cpp -o CMakeFiles/TestReferenceAmoebaInPlaneAngleForce.dir/TestReferenceAmoebaInPlaneAngleForce.cpp.s

# Object files for target TestReferenceAmoebaInPlaneAngleForce
TestReferenceAmoebaInPlaneAngleForce_OBJECTS = \
"CMakeFiles/TestReferenceAmoebaInPlaneAngleForce.dir/TestReferenceAmoebaInPlaneAngleForce.cpp.o"

# External object files for target TestReferenceAmoebaInPlaneAngleForce
TestReferenceAmoebaInPlaneAngleForce_EXTERNAL_OBJECTS =

TestReferenceAmoebaInPlaneAngleForce: plugins/amoeba/platforms/reference/tests/CMakeFiles/TestReferenceAmoebaInPlaneAngleForce.dir/TestReferenceAmoebaInPlaneAngleForce.cpp.o
TestReferenceAmoebaInPlaneAngleForce: plugins/amoeba/platforms/reference/tests/CMakeFiles/TestReferenceAmoebaInPlaneAngleForce.dir/build.make
TestReferenceAmoebaInPlaneAngleForce: libOpenMMAmoebaReference.so
TestReferenceAmoebaInPlaneAngleForce: libOpenMMAmoeba.so
TestReferenceAmoebaInPlaneAngleForce: libOpenMM.so.7.5
TestReferenceAmoebaInPlaneAngleForce: /usr/lib/x86_64-linux-gnu/libdl.so
TestReferenceAmoebaInPlaneAngleForce: plugins/amoeba/platforms/reference/tests/CMakeFiles/TestReferenceAmoebaInPlaneAngleForce.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../../../../TestReferenceAmoebaInPlaneAngleForce"
	cd /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/plugins/amoeba/platforms/reference/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/TestReferenceAmoebaInPlaneAngleForce.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
plugins/amoeba/platforms/reference/tests/CMakeFiles/TestReferenceAmoebaInPlaneAngleForce.dir/build: TestReferenceAmoebaInPlaneAngleForce

.PHONY : plugins/amoeba/platforms/reference/tests/CMakeFiles/TestReferenceAmoebaInPlaneAngleForce.dir/build

plugins/amoeba/platforms/reference/tests/CMakeFiles/TestReferenceAmoebaInPlaneAngleForce.dir/clean:
	cd /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/plugins/amoeba/platforms/reference/tests && $(CMAKE_COMMAND) -P CMakeFiles/TestReferenceAmoebaInPlaneAngleForce.dir/cmake_clean.cmake
.PHONY : plugins/amoeba/platforms/reference/tests/CMakeFiles/TestReferenceAmoebaInPlaneAngleForce.dir/clean

plugins/amoeba/platforms/reference/tests/CMakeFiles/TestReferenceAmoebaInPlaneAngleForce.dir/depend:
	cd /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1 /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/plugins/amoeba/platforms/reference/tests /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1 /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/plugins/amoeba/platforms/reference/tests /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/plugins/amoeba/platforms/reference/tests/CMakeFiles/TestReferenceAmoebaInPlaneAngleForce.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : plugins/amoeba/platforms/reference/tests/CMakeFiles/TestReferenceAmoebaInPlaneAngleForce.dir/depend

