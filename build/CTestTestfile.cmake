# CMake generated Testfile for 
# Source directory: /home/yyx/task/23/recruitment-2023-spring
# Build directory: /home/yyx/task/23/recruitment-2023-spring/build
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(banded-1024 "/home/yyx/task/23/recruitment-2023-spring/build/tests/SpMM_test" "/tmp/dataset/1024x1024banded_0.bin")
set_tests_properties(banded-1024 PROPERTIES  _BACKTRACE_TRIPLES "/home/yyx/task/23/recruitment-2023-spring/etc/tests.cmake;2;add_test;/home/yyx/task/23/recruitment-2023-spring/etc/tests.cmake;0;;/home/yyx/task/23/recruitment-2023-spring/CMakeLists.txt;21;include;/home/yyx/task/23/recruitment-2023-spring/CMakeLists.txt;0;")
add_test(banded-2048 "/home/yyx/task/23/recruitment-2023-spring/build/tests/SpMM_test" "/tmp/dataset/2048x2048banded_0.bin")
set_tests_properties(banded-2048 PROPERTIES  _BACKTRACE_TRIPLES "/home/yyx/task/23/recruitment-2023-spring/etc/tests.cmake;3;add_test;/home/yyx/task/23/recruitment-2023-spring/etc/tests.cmake;0;;/home/yyx/task/23/recruitment-2023-spring/CMakeLists.txt;21;include;/home/yyx/task/23/recruitment-2023-spring/CMakeLists.txt;0;")
add_test(diagonal-1024 "/home/yyx/task/23/recruitment-2023-spring/build/tests/SpMM_test" "/tmp/dataset/1024x1024diagonal_0.bin")
set_tests_properties(diagonal-1024 PROPERTIES  _BACKTRACE_TRIPLES "/home/yyx/task/23/recruitment-2023-spring/etc/tests.cmake;4;add_test;/home/yyx/task/23/recruitment-2023-spring/etc/tests.cmake;0;;/home/yyx/task/23/recruitment-2023-spring/CMakeLists.txt;21;include;/home/yyx/task/23/recruitment-2023-spring/CMakeLists.txt;0;")
add_test(diagonal-2048 "/home/yyx/task/23/recruitment-2023-spring/build/tests/SpMM_test" "/tmp/dataset/2048x2048diagonal_0.bin")
set_tests_properties(diagonal-2048 PROPERTIES  _BACKTRACE_TRIPLES "/home/yyx/task/23/recruitment-2023-spring/etc/tests.cmake;5;add_test;/home/yyx/task/23/recruitment-2023-spring/etc/tests.cmake;0;;/home/yyx/task/23/recruitment-2023-spring/CMakeLists.txt;21;include;/home/yyx/task/23/recruitment-2023-spring/CMakeLists.txt;0;")
add_test(general-1024 "/home/yyx/task/23/recruitment-2023-spring/build/tests/SpMM_test" "/tmp/dataset/1024x1024general_0.bin")
set_tests_properties(general-1024 PROPERTIES  _BACKTRACE_TRIPLES "/home/yyx/task/23/recruitment-2023-spring/etc/tests.cmake;6;add_test;/home/yyx/task/23/recruitment-2023-spring/etc/tests.cmake;0;;/home/yyx/task/23/recruitment-2023-spring/CMakeLists.txt;21;include;/home/yyx/task/23/recruitment-2023-spring/CMakeLists.txt;0;")
add_test(general-2048 "/home/yyx/task/23/recruitment-2023-spring/build/tests/SpMM_test" "/tmp/dataset/2048x2048general_0.bin")
set_tests_properties(general-2048 PROPERTIES  _BACKTRACE_TRIPLES "/home/yyx/task/23/recruitment-2023-spring/etc/tests.cmake;7;add_test;/home/yyx/task/23/recruitment-2023-spring/etc/tests.cmake;0;;/home/yyx/task/23/recruitment-2023-spring/CMakeLists.txt;21;include;/home/yyx/task/23/recruitment-2023-spring/CMakeLists.txt;0;")
add_test(symmetric-1024 "/home/yyx/task/23/recruitment-2023-spring/build/tests/SpMM_test" "/tmp/dataset/1024x1024symmetric_0.bin")
set_tests_properties(symmetric-1024 PROPERTIES  _BACKTRACE_TRIPLES "/home/yyx/task/23/recruitment-2023-spring/etc/tests.cmake;8;add_test;/home/yyx/task/23/recruitment-2023-spring/etc/tests.cmake;0;;/home/yyx/task/23/recruitment-2023-spring/CMakeLists.txt;21;include;/home/yyx/task/23/recruitment-2023-spring/CMakeLists.txt;0;")
add_test(symmetric-2048 "/home/yyx/task/23/recruitment-2023-spring/build/tests/SpMM_test" "/tmp/dataset/2048x2048symmetric_0.bin")
set_tests_properties(symmetric-2048 PROPERTIES  _BACKTRACE_TRIPLES "/home/yyx/task/23/recruitment-2023-spring/etc/tests.cmake;9;add_test;/home/yyx/task/23/recruitment-2023-spring/etc/tests.cmake;0;;/home/yyx/task/23/recruitment-2023-spring/CMakeLists.txt;21;include;/home/yyx/task/23/recruitment-2023-spring/CMakeLists.txt;0;")
add_test(triangular-1024 "/home/yyx/task/23/recruitment-2023-spring/build/tests/SpMM_test" "/tmp/dataset/1024x1024triangular_0.bin")
set_tests_properties(triangular-1024 PROPERTIES  _BACKTRACE_TRIPLES "/home/yyx/task/23/recruitment-2023-spring/etc/tests.cmake;10;add_test;/home/yyx/task/23/recruitment-2023-spring/etc/tests.cmake;0;;/home/yyx/task/23/recruitment-2023-spring/CMakeLists.txt;21;include;/home/yyx/task/23/recruitment-2023-spring/CMakeLists.txt;0;")
add_test(triangular-2048 "/home/yyx/task/23/recruitment-2023-spring/build/tests/SpMM_test" "/tmp/dataset/2048x2048triangular_0.bin")
set_tests_properties(triangular-2048 PROPERTIES  _BACKTRACE_TRIPLES "/home/yyx/task/23/recruitment-2023-spring/etc/tests.cmake;11;add_test;/home/yyx/task/23/recruitment-2023-spring/etc/tests.cmake;0;;/home/yyx/task/23/recruitment-2023-spring/CMakeLists.txt;21;include;/home/yyx/task/23/recruitment-2023-spring/CMakeLists.txt;0;")
subdirs("tests")
