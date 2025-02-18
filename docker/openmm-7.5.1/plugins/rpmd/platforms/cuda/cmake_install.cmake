# Install script for directory: /home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/plugins/rpmd/platforms/cuda

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
  if(EXISTS "$ENV{DESTDIR}/usr/local/openmm/lib/plugins/libOpenMMRPMDCUDA.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/openmm/lib/plugins/libOpenMMRPMDCUDA.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/usr/local/openmm/lib/plugins/libOpenMMRPMDCUDA.so"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/openmm/lib/plugins/libOpenMMRPMDCUDA.so")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/openmm/lib/plugins" TYPE SHARED_LIBRARY FILES "/home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/libOpenMMRPMDCUDA.so")
  if(EXISTS "$ENV{DESTDIR}/usr/local/openmm/lib/plugins/libOpenMMRPMDCUDA.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/openmm/lib/plugins/libOpenMMRPMDCUDA.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/usr/local/openmm/lib/plugins/libOpenMMRPMDCUDA.so"
         OLD_RPATH "/home/taylorjones/Documents/alphafold/docker/openmm-7.5.1:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/usr/local/openmm/lib/plugins/libOpenMMRPMDCUDA.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/taylorjones/Documents/alphafold/docker/openmm-7.5.1/plugins/rpmd/platforms/cuda/tests/cmake_install.cmake")

endif()

