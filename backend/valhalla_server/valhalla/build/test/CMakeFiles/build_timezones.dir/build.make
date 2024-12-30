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

# Utility rule file for build_timezones.

# Include any custom commands dependencies for this target.
include test/CMakeFiles/build_timezones.dir/compiler_depend.make

# Include the progress variables for this target.
include test/CMakeFiles/build_timezones.dir/progress.make

test/CMakeFiles/build_timezones: test/data/tz.sqlite

test/data/tz.sqlite: /Users/yijungu/cnumap/backend/valhalla_server/valhalla/scripts/valhalla_build_timezones
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/Users/yijungu/cnumap/backend/valhalla_server/valhalla/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building tz.sqlite..."
	/opt/homebrew/bin/cmake -E make_directory test/data/
	/Users/yijungu/cnumap/backend/valhalla_server/valhalla/scripts/valhalla_build_timezones > /Users/yijungu/cnumap/backend/valhalla_server/valhalla/build/test/data/tz.sqlite.tmp
	/opt/homebrew/bin/cmake -E rename /Users/yijungu/cnumap/backend/valhalla_server/valhalla/build/test/data/tz.sqlite.tmp /Users/yijungu/cnumap/backend/valhalla_server/valhalla/build/test/data/tz.sqlite

test/CMakeFiles/build_timezones.dir/codegen:
.PHONY : test/CMakeFiles/build_timezones.dir/codegen

build_timezones: test/CMakeFiles/build_timezones
build_timezones: test/data/tz.sqlite
build_timezones: test/CMakeFiles/build_timezones.dir/build.make
.PHONY : build_timezones

# Rule to build all files generated by this target.
test/CMakeFiles/build_timezones.dir/build: build_timezones
.PHONY : test/CMakeFiles/build_timezones.dir/build

test/CMakeFiles/build_timezones.dir/clean:
	cd /Users/yijungu/cnumap/backend/valhalla_server/valhalla/build/test && $(CMAKE_COMMAND) -P CMakeFiles/build_timezones.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/build_timezones.dir/clean

test/CMakeFiles/build_timezones.dir/depend:
	cd /Users/yijungu/cnumap/backend/valhalla_server/valhalla/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/yijungu/cnumap/backend/valhalla_server/valhalla /Users/yijungu/cnumap/backend/valhalla_server/valhalla/test /Users/yijungu/cnumap/backend/valhalla_server/valhalla/build /Users/yijungu/cnumap/backend/valhalla_server/valhalla/build/test /Users/yijungu/cnumap/backend/valhalla_server/valhalla/build/test/CMakeFiles/build_timezones.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : test/CMakeFiles/build_timezones.dir/depend
