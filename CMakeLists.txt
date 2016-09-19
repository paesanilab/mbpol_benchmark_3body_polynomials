cmake_minimum_required (VERSION 2.6)

project(test3b)

find_package( Boost 1.55 COMPONENTS timer system REQUIRED )
find_package( CUDA REQUIRED )
include_directories( include/ ${Boost_INCLUDE_DIR} )

#add_definitions(-DDISABLEPOLYCPU)
#add_definitions(-DDISABLEPOLYGPU)

cuda_add_library(cuda_3b_maple kernels/3b_maple.cu)

add_executable(run_test run_test.cpp)

target_link_libraries(run_test cuda_3b_maple ${Boost_LIBRARIES})
