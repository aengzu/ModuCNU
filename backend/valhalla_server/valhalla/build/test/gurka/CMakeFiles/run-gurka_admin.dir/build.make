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

# Utility rule file for run-gurka_admin.

# Include any custom commands dependencies for this target.
include test/gurka/CMakeFiles/run-gurka_admin.dir/compiler_depend.make

# Include the progress variables for this target.
include test/gurka/CMakeFiles/run-gurka_admin.dir/progress.make

test/gurka/CMakeFiles/run-gurka_admin: test/gurka/gurka_admin.log

test/gurka/gurka_admin.log: test/gurka/gurka_admin
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/Users/yijungu/cnumap/backend/valhalla_server/valhalla/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating gurka_admin.log"
	LOCPATH=/Users/yijungu/cnumap/backend/valhalla_server/valhalla/locales /bin/bash -c "/Users/yijungu/cnumap/backend/valhalla_server/valhalla/build/test/gurka/gurka_admin >& /Users/yijungu/cnumap/backend/valhalla_server/valhalla/build/test/gurka/gurka_admin.log         && echo [PASS] gurka_admin         || ( exit=\$$? ;              echo [FAIL] gurka_admin ;              cat /Users/yijungu/cnumap/backend/valhalla_server/valhalla/build/test/gurka/gurka_admin.log ;              exit \$$exit )"

test/gurka/CMakeFiles/run-gurka_admin.dir/codegen:
.PHONY : test/gurka/CMakeFiles/run-gurka_admin.dir/codegen

run-gurka_admin: test/gurka/CMakeFiles/run-gurka_admin
run-gurka_admin: test/gurka/gurka_admin.log
run-gurka_admin: test/gurka/CMakeFiles/run-gurka_admin.dir/build.make
.PHONY : run-gurka_admin

# Rule to build all files generated by this target.
test/gurka/CMakeFiles/run-gurka_admin.dir/build: run-gurka_admin
.PHONY : test/gurka/CMakeFiles/run-gurka_admin.dir/build

test/gurka/CMakeFiles/run-gurka_admin.dir/clean:
	cd /Users/yijungu/cnumap/backend/valhalla_server/valhalla/build/test/gurka && $(CMAKE_COMMAND) -P CMakeFiles/run-gurka_admin.dir/cmake_clean.cmake
.PHONY : test/gurka/CMakeFiles/run-gurka_admin.dir/clean

test/gurka/CMakeFiles/run-gurka_admin.dir/depend:
	cd /Users/yijungu/cnumap/backend/valhalla_server/valhalla/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/yijungu/cnumap/backend/valhalla_server/valhalla /Users/yijungu/cnumap/backend/valhalla_server/valhalla/test/gurka /Users/yijungu/cnumap/backend/valhalla_server/valhalla/build /Users/yijungu/cnumap/backend/valhalla_server/valhalla/build/test/gurka /Users/yijungu/cnumap/backend/valhalla_server/valhalla/build/test/gurka/CMakeFiles/run-gurka_admin.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : test/gurka/CMakeFiles/run-gurka_admin.dir/depend
