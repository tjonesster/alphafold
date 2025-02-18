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
include plugins/amoeba/serialization/tests/CMakeFiles/TestSerializeAmoebaVdwForce.dir/depend.make

# Include the progress variables for this target.
include plugins/amoeba/serialization/tests/CMakeFiles/TestSerializeAmoebaVdwForce.dir/progress.make

# Include the compile flags for this target's objects.
include plugins/amoeba/serialization/tests/CMakeFiles/TestSerializeAmoebaVdwForce.dir/flags.make

plugins/amoeba/serialization/tests/CMakeFiles/TestSerializeAmoebaVdwForce.dir/TestSerializeAmoebaVdwForce.cpp.o: plugins/amoeba/serialization/tests/CMakeFiles/TestSerializeAmoebaVdwForce.dir/flags.make
plugins/amoeba/serialization/tests/CMakeFiles/TestSerializeAmoebaVdwForce.dir/TestSerializeAmoebaVdwForce.cpp.o: plugins/amoeba/serialization/tests/TestSerializeAmoebaVdwForce.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object plugins/amoeba/serialization/tests/CMakeFiles/TestSerializeAmoebaVdwForce.dir/TestSerializeAmoebaVdwForce.cpp.o"
	cd /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/plugins/amoeba/serialization/tests && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TestSerializeAmoebaVdwForce.dir/TestSerializeAmoebaVdwForce.cpp.o -c /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/plugins/amoeba/serialization/tests/TestSerializeAmoebaVdwForce.cpp

plugins/amoeba/serialization/tests/CMakeFiles/TestSerializeAmoebaVdwForce.dir/TestSerializeAmoebaVdwForce.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TestSerializeAmoebaVdwForce.dir/TestSerializeAmoebaVdwForce.cpp.i"
	cd /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/plugins/amoeba/serialization/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/plugins/amoeba/serialization/tests/TestSerializeAmoebaVdwForce.cpp > CMakeFiles/TestSerializeAmoebaVdwForce.dir/TestSerializeAmoebaVdwForce.cpp.i

plugins/amoeba/serialization/tests/CMakeFiles/TestSerializeAmoebaVdwForce.dir/TestSerializeAmoebaVdwForce.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TestSerializeAmoebaVdwForce.dir/TestSerializeAmoebaVdwForce.cpp.s"
	cd /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/plugins/amoeba/serialization/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/plugins/amoeba/serialization/tests/TestSerializeAmoebaVdwForce.cpp -o CMakeFiles/TestSerializeAmoebaVdwForce.dir/TestSerializeAmoebaVdwForce.cpp.s

# Object files for target TestSerializeAmoebaVdwForce
TestSerializeAmoebaVdwForce_OBJECTS = \
"CMakeFiles/TestSerializeAmoebaVdwForce.dir/TestSerializeAmoebaVdwForce.cpp.o"

# External object files for target TestSerializeAmoebaVdwForce
TestSerializeAmoebaVdwForce_EXTERNAL_OBJECTS =

TestSerializeAmoebaVdwForce: plugins/amoeba/serialization/tests/CMakeFiles/TestSerializeAmoebaVdwForce.dir/TestSerializeAmoebaVdwForce.cpp.o
TestSerializeAmoebaVdwForce: plugins/amoeba/serialization/tests/CMakeFiles/TestSerializeAmoebaVdwForce.dir/build.make
TestSerializeAmoebaVdwForce: libOpenMMAmoeba.so
TestSerializeAmoebaVdwForce: libOpenMM.so.7.5
TestSerializeAmoebaVdwForce: /usr/lib/x86_64-linux-gnu/libdl.so
TestSerializeAmoebaVdwForce: plugins/amoeba/serialization/tests/CMakeFiles/TestSerializeAmoebaVdwForce.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../../../TestSerializeAmoebaVdwForce"
	cd /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/plugins/amoeba/serialization/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/TestSerializeAmoebaVdwForce.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
plugins/amoeba/serialization/tests/CMakeFiles/TestSerializeAmoebaVdwForce.dir/build: TestSerializeAmoebaVdwForce

.PHONY : plugins/amoeba/serialization/tests/CMakeFiles/TestSerializeAmoebaVdwForce.dir/build

plugins/amoeba/serialization/tests/CMakeFiles/TestSerializeAmoebaVdwForce.dir/clean:
	cd /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/plugins/amoeba/serialization/tests && $(CMAKE_COMMAND) -P CMakeFiles/TestSerializeAmoebaVdwForce.dir/cmake_clean.cmake
.PHONY : plugins/amoeba/serialization/tests/CMakeFiles/TestSerializeAmoebaVdwForce.dir/clean

plugins/amoeba/serialization/tests/CMakeFiles/TestSerializeAmoebaVdwForce.dir/depend:
	cd /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1 /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/plugins/amoeba/serialization/tests /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1 /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/plugins/amoeba/serialization/tests /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/plugins/amoeba/serialization/tests/CMakeFiles/TestSerializeAmoebaVdwForce.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : plugins/amoeba/serialization/tests/CMakeFiles/TestSerializeAmoebaVdwForce.dir/depend

