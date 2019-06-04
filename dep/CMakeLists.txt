cmake_minimum_required(VERSION 3.2)

include(ExternalProject)

set (dep_install_dir "${CMAKE_INSTALL_PREFIX}")

set(dep_cmake_args
    -DCMAKE_PREFIX_PATH:PATH=<INSTALL_DIR>
    -DCMAKE_INSTALL_PREFIX:PATH=<INSTALL_DIR>
    -DBUILD_TESTING:BOOL=OFF
    -DCMAKE_PROGRAM_PATH:PATH=${dep_install_dir}/bin
    -DCMAKE_LIBRARY_PATH:PATH=${dep_install_dir}/lib
    -DCMAKE_INCLUDE_PATH:PATH=${dep_install_dir}/include
    -DCMAKE_BUILD_TYPE:STRING=${CMAKE_BUILD_TYPE}
    -DCMAKE_CXX_STANDARD:STRING=${CMAKE_CXX_STANDARD}
    -DCMAKE_CXX_STANDARD_REQUIRED:BOOL=${CMAKE_CXX_STANDARD_REQUIRED}
    -DCMAKE_C_COMPILER=${CMAKE_C_COMPILER}
    -DCMAKE_CXX_COMPILER=${CMAKE_CXX_COMPILER}
    -DCMAKE_C_COMPILER_LAUNCHER=${CMAKE_C_COMPILER_LAUNCHER}
    -DCMAKE_CXX_COMPILER_LAUNCHER=${CMAKE_CXX_COMPILER_LAUNCHER}
    )

externalproject_add(testchildmodule
    GIT_REPOSITORY "git@github.com:AlwaysTraining/testchildmodule.git"
    GIT_TAG master
    PREFIX testchildmodule
    INSTALL_DIR ${dep_install_dir}
    CMAKE_ARGS ${dep_cmake_args}
    )



