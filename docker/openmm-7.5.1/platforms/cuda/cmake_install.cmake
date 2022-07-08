# Install script for directory: /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/platforms/cuda

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/openmm/cuda" TYPE FILE FILES
    "/home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/platforms/cuda/include/CudaArray.h"
    "/home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/platforms/cuda/include/CudaBondedUtilities.h"
    "/home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/platforms/cuda/include/CudaContext.h"
    "/home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/platforms/cuda/include/CudaEvent.h"
    "/home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/platforms/cuda/include/CudaExpressionUtilities.h"
    "/home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/platforms/cuda/include/CudaFFT3D.h"
    "/home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/platforms/cuda/include/CudaForceInfo.h"
    "/home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/platforms/cuda/include/CudaIntegrationUtilities.h"
    "/home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/platforms/cuda/include/CudaKernel.h"
    "/home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/platforms/cuda/include/CudaKernelFactory.h"
    "/home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/platforms/cuda/include/CudaKernels.h"
    "/home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/platforms/cuda/include/CudaNonbondedUtilities.h"
    "/home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/platforms/cuda/include/CudaParallelKernels.h"
    "/home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/platforms/cuda/include/CudaParameterSet.h"
    "/home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/platforms/cuda/include/CudaPlatform.h"
    "/home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/platforms/cuda/include/CudaProgram.h"
    "/home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/platforms/cuda/include/CudaSort.h"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/platforms/cuda/tests/cmake_install.cmake")
  include("/home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/platforms/cuda/sharedTarget/cmake_install.cmake")

endif()

