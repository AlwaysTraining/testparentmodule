cmake_minimum_required(VERSION 3.2)
add_library(bar SHARED bar.c)
install(TARGETS bar LIBRARY DESTINATION ${CMAKE_INSTALL_PREFIX}/lib)
