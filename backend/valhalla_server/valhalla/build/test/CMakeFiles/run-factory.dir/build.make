# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.31

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
CMAKE_COMMAND = /opt/homebrew/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/yijungu/cnumap/backend/valhalla_server/valhalla

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/yijungu/cnumap/backend/valhalla_server/valhalla/build

# Utility rule file for run-factory.

# Include any custom commands dependencies for this target.
include test/CMakeFiles/run-factory.dir/compiler_depend.make

# Include the progress variables for this target.
include test/CMakeFiles/run-factory.dir/progress.make

test/CMakeFiles/run-factory: test/factory.log

test/factory.log: test/factory
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/Users/yijungu/cnumap/backend/valhalla_server/valhalla/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating factory.log"
	LOCPATH=/Users/yijungu/cnumap/backend/valhalla_server/valhalla/locales /bin/bash -c "/Users/yijungu/cnumap/backend/valhalla_server/valhalla/build/test/factory >& /Users/yijungu/cnumap/backend/valhalla_server/valhalla/build/test/factory.log       && echo [PASS] factory       || ( exit=\$$? ;            echo [FAIL] factory ;            cat /Users/yijungu/cnumap/backend/valhalla_server/valhalla/build/test/factory.log ;            exit \$$exit )"

test/CMakeFiles/run-factory.dir/codegen:
.PHONY : test/CMakeFiles/run-factory.dir/codegen

run-factory: test/CMakeFiles/run-factory
run-factory: test/factory.log
run-factory: test/CMakeFiles/run-factory.dir/build.make
.PHONY : run-factory

# Rule to build all files generated by this target.
test/CMakeFiles/run-factory.dir/build: run-factory
.PHONY : test/CMakeFiles/run-factory.dir/build

test/CMakeFiles/run-factory.dir/clean:
	cd /Users/yijungu/cnumap/backend/valhalla_server/valhalla/build/test && $(CMAKE_COMMAND) -P CMakeFiles/run-factory.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/run-factory.dir/clean

test/CMakeFiles/run-factory.dir/depend:
	cd /Users/yijungu/cnumap/backend/valhalla_server/valhalla/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/yijungu/cnumap/backend/valhalla_server/valhalla /Users/yijungu/cnumap/backend/valhalla_server/valhalla/test /Users/yijungu/cnumap/backend/valhalla_server/valhalla/build /Users/yijungu/cnumap/backend/valhalla_server/valhalla/build/test /Users/yijungu/cnumap/backend/valhalla_server/valhalla/build/test/CMakeFiles/run-factory.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : test/CMakeFiles/run-factory.dir/depend

