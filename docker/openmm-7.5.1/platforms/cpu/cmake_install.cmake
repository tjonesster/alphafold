# Install script for directory: /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/platforms/cpu

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/openmm/cpu" TYPE FILE FILES
    "/home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/platforms/cpu/include/AlignedArray.h"
    "/home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/platforms/cpu/include/CpuBondForce.h"
    "/home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/platforms/cpu/include/CpuCustomGBForce.h"
    "/home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/platforms/cpu/include/CpuCustomManyParticleForce.h"
    "/home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/platforms/cpu/include/CpuCustomNonbondedForce.h"
    "/home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/platforms/cpu/include/CpuGBSAOBCForce.h"
    "/home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/platforms/cpu/include/CpuGayBerneForce.h"
    "/home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/platforms/cpu/include/CpuKernelFactory.h"
    "/home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/platforms/cpu/include/CpuKernels.h"
    "/home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/platforms/cpu/include/CpuLangevinDynamics.h"
    "/home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/platforms/cpu/include/CpuLangevinMiddleDynamics.h"
    "/home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/platforms/cpu/include/CpuNeighborList.h"
    "/home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/platforms/cpu/include/CpuNonbondedForce.h"
    "/home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/platforms/cpu/include/CpuNonbondedForceFvec.h"
    "/home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/platforms/cpu/include/CpuPlatform.h"
    "/home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/platforms/cpu/include/CpuRandom.h"
    "/home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/platforms/cpu/include/CpuSETTLE.h"
    "/home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/platforms/cpu/include/windowsExportCpu.h"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/platforms/cpu/tests/cmake_install.cmake")
  include("/home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/platforms/cpu/sharedTarget/cmake_install.cmake")

endif()

