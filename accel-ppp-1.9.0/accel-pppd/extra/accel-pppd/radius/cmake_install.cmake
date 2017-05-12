# Install script for directory: /root/accel-ppp-1.9.0/accel-pppd/radius

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
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

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/accel-ppp/libradius.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/accel-ppp/libradius.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/accel-ppp/libradius.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib64/accel-ppp" TYPE SHARED_LIBRARY FILES "/root/accel-ppp-1.9.0/accel-pppd/extra/accel-pppd/radius/libradius.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/accel-ppp/libradius.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/accel-ppp/libradius.so")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/accel-ppp/libradius.so")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/accel-ppp/radius" TYPE FILE FILES
    "/root/accel-ppp-1.9.0/accel-pppd/radius/dict/dictionary.cisco"
    "/root/accel-ppp-1.9.0/accel-pppd/radius/dict/dictionary.rfc2865"
    "/root/accel-ppp-1.9.0/accel-pppd/radius/dict/dictionary.rfc4675"
    "/root/accel-ppp-1.9.0/accel-pppd/radius/dict/dictionary.rfc4849"
    "/root/accel-ppp-1.9.0/accel-pppd/radius/dict/dictionary.rfc4818"
    "/root/accel-ppp-1.9.0/accel-pppd/radius/dict/dictionary.rfc3580"
    "/root/accel-ppp-1.9.0/accel-pppd/radius/dict/dictionary.rfc2868"
    "/root/accel-ppp-1.9.0/accel-pppd/radius/dict/dictionary.rfc2866"
    "/root/accel-ppp-1.9.0/accel-pppd/radius/dict/dictionary.rfc4679"
    "/root/accel-ppp-1.9.0/accel-pppd/radius/dict/dictionary.rfc2867"
    "/root/accel-ppp-1.9.0/accel-pppd/radius/dict/dictionary.microsoft"
    "/root/accel-ppp-1.9.0/accel-pppd/radius/dict/dictionary"
    "/root/accel-ppp-1.9.0/accel-pppd/radius/dict/dictionary.rfc3162"
    "/root/accel-ppp-1.9.0/accel-pppd/radius/dict/dictionary.alcatel"
    "/root/accel-ppp-1.9.0/accel-pppd/radius/dict/dictionary.rfc3576"
    "/root/accel-ppp-1.9.0/accel-pppd/radius/dict/dictionary.rfc4072"
    "/root/accel-ppp-1.9.0/accel-pppd/radius/dict/dictionary.rfc4372"
    "/root/accel-ppp-1.9.0/accel-pppd/radius/dict/dictionary.rfc5176"
    "/root/accel-ppp-1.9.0/accel-pppd/radius/dict/dictionary.rfc2869"
    )
endif()

