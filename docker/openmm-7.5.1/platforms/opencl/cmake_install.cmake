# Install script for directory: /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/platforms/opencl

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/openmm/opencl" TYPE FILE FILES
    "/home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/platforms/opencl/include/OpenCLArray.h"
    "/home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/platforms/opencl/include/OpenCLBondedUtilities.h"
    "/home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/platforms/opencl/include/OpenCLCompact.h"
    "/home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/platforms/opencl/include/OpenCLContext.h"
    "/home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/platforms/opencl/include/OpenCLEvent.h"
    "/home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/platforms/opencl/include/OpenCLExpressionUtilities.h"
    "/home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/platforms/opencl/include/OpenCLFFT3D.h"
    "/home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/platforms/opencl/include/OpenCLForceInfo.h"
    "/home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/platforms/opencl/include/OpenCLIntegrationUtilities.h"
    "/home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/platforms/opencl/include/OpenCLKernel.h"
    "/home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/platforms/opencl/include/OpenCLKernelFactory.h"
    "/home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/platforms/opencl/include/OpenCLKernels.h"
    "/home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/platforms/opencl/include/OpenCLNonbondedUtilities.h"
    "/home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/platforms/opencl/include/OpenCLParallelKernels.h"
    "/home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/platforms/opencl/include/OpenCLParameterSet.h"
    "/home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/platforms/opencl/include/OpenCLPlatform.h"
    "/home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/platforms/opencl/include/OpenCLProgram.h"
    "/home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/platforms/opencl/include/OpenCLSort.h"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/platforms/opencl/tests/cmake_install.cmake")
  include("/home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/platforms/opencl/sharedTarget/cmake_install.cmake")

endif()

