# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/fali/projects/combinations

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/fali/projects/combinations/build

# Include any dependencies generated for this target.
include combinations/CMakeFiles/combinations_test.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include combinations/CMakeFiles/combinations_test.dir/compiler_depend.make

# Include the progress variables for this target.
include combinations/CMakeFiles/combinations_test.dir/progress.make

# Include the compile flags for this target's objects.
include combinations/CMakeFiles/combinations_test.dir/flags.make

combinations/CMakeFiles/combinations_test.dir/combinations.cpp.o: combinations/CMakeFiles/combinations_test.dir/flags.make
combinations/CMakeFiles/combinations_test.dir/combinations.cpp.o: ../combinations/combinations.cpp
combinations/CMakeFiles/combinations_test.dir/combinations.cpp.o: combinations/CMakeFiles/combinations_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/fali/projects/combinations/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object combinations/CMakeFiles/combinations_test.dir/combinations.cpp.o"
	cd /home/fali/projects/combinations/build/combinations && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT combinations/CMakeFiles/combinations_test.dir/combinations.cpp.o -MF CMakeFiles/combinations_test.dir/combinations.cpp.o.d -o CMakeFiles/combinations_test.dir/combinations.cpp.o -c /home/fali/projects/combinations/combinations/combinations.cpp

combinations/CMakeFiles/combinations_test.dir/combinations.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/combinations_test.dir/combinations.cpp.i"
	cd /home/fali/projects/combinations/build/combinations && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/fali/projects/combinations/combinations/combinations.cpp > CMakeFiles/combinations_test.dir/combinations.cpp.i

combinations/CMakeFiles/combinations_test.dir/combinations.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/combinations_test.dir/combinations.cpp.s"
	cd /home/fali/projects/combinations/build/combinations && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/fali/projects/combinations/combinations/combinations.cpp -o CMakeFiles/combinations_test.dir/combinations.cpp.s

combinations/CMakeFiles/combinations_test.dir/test.cpp.o: combinations/CMakeFiles/combinations_test.dir/flags.make
combinations/CMakeFiles/combinations_test.dir/test.cpp.o: ../combinations/test.cpp
combinations/CMakeFiles/combinations_test.dir/test.cpp.o: combinations/CMakeFiles/combinations_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/fali/projects/combinations/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object combinations/CMakeFiles/combinations_test.dir/test.cpp.o"
	cd /home/fali/projects/combinations/build/combinations && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT combinations/CMakeFiles/combinations_test.dir/test.cpp.o -MF CMakeFiles/combinations_test.dir/test.cpp.o.d -o CMakeFiles/combinations_test.dir/test.cpp.o -c /home/fali/projects/combinations/combinations/test.cpp

combinations/CMakeFiles/combinations_test.dir/test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/combinations_test.dir/test.cpp.i"
	cd /home/fali/projects/combinations/build/combinations && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/fali/projects/combinations/combinations/test.cpp > CMakeFiles/combinations_test.dir/test.cpp.i

combinations/CMakeFiles/combinations_test.dir/test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/combinations_test.dir/test.cpp.s"
	cd /home/fali/projects/combinations/build/combinations && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/fali/projects/combinations/combinations/test.cpp -o CMakeFiles/combinations_test.dir/test.cpp.s

# Object files for target combinations_test
combinations_test_OBJECTS = \
"CMakeFiles/combinations_test.dir/combinations.cpp.o" \
"CMakeFiles/combinations_test.dir/test.cpp.o"

# External object files for target combinations_test
combinations_test_EXTERNAL_OBJECTS =

combinations/combinations_test: combinations/CMakeFiles/combinations_test.dir/combinations.cpp.o
combinations/combinations_test: combinations/CMakeFiles/combinations_test.dir/test.cpp.o
combinations/combinations_test: combinations/CMakeFiles/combinations_test.dir/build.make
combinations/combinations_test: lib/libgtest_main.a
combinations/combinations_test: lib/libgtest.a
combinations/combinations_test: combinations/CMakeFiles/combinations_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/fali/projects/combinations/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable combinations_test"
	cd /home/fali/projects/combinations/build/combinations && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/combinations_test.dir/link.txt --verbose=$(VERBOSE)
	cd /home/fali/projects/combinations/build/combinations && /usr/bin/cmake -D TEST_TARGET=combinations_test -D TEST_EXECUTABLE=/home/fali/projects/combinations/build/combinations/combinations_test -D TEST_EXECUTOR= -D TEST_WORKING_DIR=/home/fali/projects/combinations/build/combinations -D TEST_EXTRA_ARGS= -D TEST_PROPERTIES= -D TEST_PREFIX= -D TEST_SUFFIX= -D TEST_FILTER= -D NO_PRETTY_TYPES=FALSE -D NO_PRETTY_VALUES=FALSE -D TEST_LIST=combinations_test_TESTS -D CTEST_FILE=/home/fali/projects/combinations/build/combinations/combinations_test[1]_tests.cmake -D TEST_DISCOVERY_TIMEOUT=5 -D TEST_XML_OUTPUT_DIR= -P /usr/share/cmake-3.22/Modules/GoogleTestAddTests.cmake

# Rule to build all files generated by this target.
combinations/CMakeFiles/combinations_test.dir/build: combinations/combinations_test
.PHONY : combinations/CMakeFiles/combinations_test.dir/build

combinations/CMakeFiles/combinations_test.dir/clean:
	cd /home/fali/projects/combinations/build/combinations && $(CMAKE_COMMAND) -P CMakeFiles/combinations_test.dir/cmake_clean.cmake
.PHONY : combinations/CMakeFiles/combinations_test.dir/clean

combinations/CMakeFiles/combinations_test.dir/depend:
	cd /home/fali/projects/combinations/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/fali/projects/combinations /home/fali/projects/combinations/combinations /home/fali/projects/combinations/build /home/fali/projects/combinations/build/combinations /home/fali/projects/combinations/build/combinations/CMakeFiles/combinations_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : combinations/CMakeFiles/combinations_test.dir/depend
