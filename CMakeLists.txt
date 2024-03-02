cmake_minimum_required(VERSION 3.27)
project(3DObjects CUDA)

set(CMAKE_CUDA_STANDARD 17)

add_library(Vec3 STATIC Vec3.cu)

set_target_properties(Vec3 PROPERTIES
        CUDA_SEPARABLE_COMPILATION ON)
