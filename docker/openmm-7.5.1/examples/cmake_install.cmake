# Install script for directory: /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/examples

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local/openmm")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/examples" TYPE FILE FILES "/home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/examples/HelloArgon.cpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/examples" TYPE FILE FILES "/home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/examples/HelloSodiumChloride.cpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/examples" TYPE FILE FILES "/home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/examples/HelloEthane.cpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/examples" TYPE FILE FILES "/home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/examples/HelloWaterBox.cpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/examples" TYPE FILE FILES "/home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/examples/HelloArgonInC.c")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/examples" TYPE FILE FILES "/home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/examples/HelloSodiumChlorideInC.c")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/examples" TYPE FILE FILES "/home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/examples/HelloArgonInFortran.f90")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/examples" TYPE FILE FILES "/home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/examples/HelloSodiumChlorideInFortran.f90")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/examples" TYPE FILE FILES
    "/home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/examples/simulateAmber.py"
    "/home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/examples/simulatePdb.py"
    "/home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/examples/simulateGromacs.py"
    "/home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/examples/benchmark.py"
    "/home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/examples/argon-chemical-potential.py"
    "/home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/examples/input.inpcrd"
    "/home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/examples/input.prmtop"
    "/home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/examples/input.pdb"
    "/home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/examples/input.gro"
    "/home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/examples/input.top"
    "/home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/examples/5dfr_minimized.pdb"
    "/home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/examples/5dfr_solv-cube_equil.pdb"
    "/home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/examples/apoa1.pdb"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/examples/VisualStudio" TYPE FILE FILES
    "/home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/examples/VisualStudio/HelloArgon.vcproj"
    "/home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/examples/VisualStudio/HelloArgon.sln"
    "/home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/examples/VisualStudio/HelloArgonInC.sln"
    "/home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/examples/VisualStudio/HelloArgonInC.vcproj"
    "/home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/examples/VisualStudio/HelloArgonInFortran.sln"
    "/home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/examples/VisualStudio/HelloArgonInFortran.vfproj"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/examples" TYPE FILE FILES "/home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/examples/README.txt")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/examples" TYPE FILE FILES
    "/home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/examples/Makefile"
    "/home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/examples/NMakefile"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/examples" TYPE FILE FILES
    "/home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/examples/MakefileNotes.txt"
    "/home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/examples/Empty.cpp"
    )
endif()

