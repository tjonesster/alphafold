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
include serialization/tests/CMakeFiles/TestSerializeAndersenThermostat.dir/depend.make

# Include the progress variables for this target.
include serialization/tests/CMakeFiles/TestSerializeAndersenThermostat.dir/progress.make

# Include the compile flags for this target's objects.
include serialization/tests/CMakeFiles/TestSerializeAndersenThermostat.dir/flags.make

serialization/tests/CMakeFiles/TestSerializeAndersenThermostat.dir/TestSerializeAndersenThermostat.cpp.o: serialization/tests/CMakeFiles/TestSerializeAndersenThermostat.dir/flags.make
serialization/tests/CMakeFiles/TestSerializeAndersenThermostat.dir/TestSerializeAndersenThermostat.cpp.o: serialization/tests/TestSerializeAndersenThermostat.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object serialization/tests/CMakeFiles/TestSerializeAndersenThermostat.dir/TestSerializeAndersenThermostat.cpp.o"
	cd /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/serialization/tests && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TestSerializeAndersenThermostat.dir/TestSerializeAndersenThermostat.cpp.o -c /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/serialization/tests/TestSerializeAndersenThermostat.cpp

serialization/tests/CMakeFiles/TestSerializeAndersenThermostat.dir/TestSerializeAndersenThermostat.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TestSerializeAndersenThermostat.dir/TestSerializeAndersenThermostat.cpp.i"
	cd /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/serialization/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/serialization/tests/TestSerializeAndersenThermostat.cpp > CMakeFiles/TestSerializeAndersenThermostat.dir/TestSerializeAndersenThermostat.cpp.i

serialization/tests/CMakeFiles/TestSerializeAndersenThermostat.dir/TestSerializeAndersenThermostat.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TestSerializeAndersenThermostat.dir/TestSerializeAndersenThermostat.cpp.s"
	cd /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/serialization/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/serialization/tests/TestSerializeAndersenThermostat.cpp -o CMakeFiles/TestSerializeAndersenThermostat.dir/TestSerializeAndersenThermostat.cpp.s

# Object files for target TestSerializeAndersenThermostat
TestSerializeAndersenThermostat_OBJECTS = \
"CMakeFiles/TestSerializeAndersenThermostat.dir/TestSerializeAndersenThermostat.cpp.o"

# External object files for target TestSerializeAndersenThermostat
TestSerializeAndersenThermostat_EXTERNAL_OBJECTS =

TestSerializeAndersenThermostat: serialization/tests/CMakeFiles/TestSerializeAndersenThermostat.dir/TestSerializeAndersenThermostat.cpp.o
TestSerializeAndersenThermostat: serialization/tests/CMakeFiles/TestSerializeAndersenThermostat.dir/build.make
TestSerializeAndersenThermostat: libOpenMM.so.7.5
TestSerializeAndersenThermostat: /usr/lib/x86_64-linux-gnu/libdl.so
TestSerializeAndersenThermostat: serialization/tests/CMakeFiles/TestSerializeAndersenThermostat.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../TestSerializeAndersenThermostat"
	cd /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/serialization/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/TestSerializeAndersenThermostat.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
serialization/tests/CMakeFiles/TestSerializeAndersenThermostat.dir/build: TestSerializeAndersenThermostat

.PHONY : serialization/tests/CMakeFiles/TestSerializeAndersenThermostat.dir/build

serialization/tests/CMakeFiles/TestSerializeAndersenThermostat.dir/clean:
	cd /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/serialization/tests && $(CMAKE_COMMAND) -P CMakeFiles/TestSerializeAndersenThermostat.dir/cmake_clean.cmake
.PHONY : serialization/tests/CMakeFiles/TestSerializeAndersenThermostat.dir/clean

serialization/tests/CMakeFiles/TestSerializeAndersenThermostat.dir/depend:
	cd /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1 /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/serialization/tests /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1 /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/serialization/tests /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/serialization/tests/CMakeFiles/TestSerializeAndersenThermostat.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : serialization/tests/CMakeFiles/TestSerializeAndersenThermostat.dir/depend

