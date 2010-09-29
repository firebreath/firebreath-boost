#/**********************************************************\ 
#Original Author: Richard Bateman (taxilian)
#
#Created:    Nov 20, 2009
#License:    Dual license model; choose one of two:
#            New BSD License
#            http://www.opensource.org/licenses/bsd-license.php
#            - or -
#            GNU Lesser General Public License, version 2.1
#            http://www.gnu.org/licenses/lgpl-2.1.html
#            
#Copyright 2009 PacketPass, Inc and the Firebreath development team
#\**********************************************************/

# Written to work with cmake 2.6
cmake_minimum_required (VERSION 2.6)
set (CMAKE_BACKWARDS_COMPATIBILITY 2.6)

include(${CMAKE_DIR}/common.cmake)

if (BOOST_FILESYSTEM_V3)
    include_directories (
        ${Boost_INCLUDE_DIRS}
        ${CMAKE_CURRENT_SOURCE_DIR}/v3/src
    )
    file (GLOB GENERAL_SRC RELATIVE ${CMAKE_CURRENT_SOURCE_DIR}
        src/v3/*.cpp
    )
else()
    include_directories (
        ${Boost_INCLUDE_DIRS}
        ${CMAKE_CURRENT_SOURCE_DIR}/v2/src
    )
    file (GLOB GENERAL_SRC RELATIVE ${CMAKE_CURRENT_SOURCE_DIR}
        src/v2/*.cpp
    )
endif()

list(APPEND SOURCES
    ${GENERAL_SRC}
)

add_library (boost_filesystem STATIC ${SOURCES})

