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

# Include any dependencies generated for this target.
include test/CMakeFiles/double_bucket_queue.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include test/CMakeFiles/double_bucket_queue.dir/compiler_depend.make

# Include the progress variables for this target.
include test/CMakeFiles/double_bucket_queue.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/double_bucket_queue.dir/flags.make

test/CMakeFiles/double_bucket_queue.dir/codegen:
.PHONY : test/CMakeFiles/double_bucket_queue.dir/codegen

test/CMakeFiles/double_bucket_queue.dir/double_bucket_queue.cc.o: test/CMakeFiles/double_bucket_queue.dir/flags.make
test/CMakeFiles/double_bucket_queue.dir/double_bucket_queue.cc.o: /Users/yijungu/cnumap/backend/valhalla_server/valhalla/test/double_bucket_queue.cc
test/CMakeFiles/double_bucket_queue.dir/double_bucket_queue.cc.o: test/CMakeFiles/double_bucket_queue.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/yijungu/cnumap/backend/valhalla_server/valhalla/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/double_bucket_queue.dir/double_bucket_queue.cc.o"
	cd /Users/yijungu/cnumap/backend/valhalla_server/valhalla/build/test && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Wall -Werror -MD -MT test/CMakeFiles/double_bucket_queue.dir/double_bucket_queue.cc.o -MF CMakeFiles/double_bucket_queue.dir/double_bucket_queue.cc.o.d -o CMakeFiles/double_bucket_queue.dir/double_bucket_queue.cc.o -c /Users/yijungu/cnumap/backend/valhalla_server/valhalla/test/double_bucket_queue.cc

test/CMakeFiles/double_bucket_queue.dir/double_bucket_queue.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/double_bucket_queue.dir/double_bucket_queue.cc.i"
	cd /Users/yijungu/cnumap/backend/valhalla_server/valhalla/build/test && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Wall -Werror -E /Users/yijungu/cnumap/backend/valhalla_server/valhalla/test/double_bucket_queue.cc > CMakeFiles/double_bucket_queue.dir/double_bucket_queue.cc.i

test/CMakeFiles/double_bucket_queue.dir/double_bucket_queue.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/double_bucket_queue.dir/double_bucket_queue.cc.s"
	cd /Users/yijungu/cnumap/backend/valhalla_server/valhalla/build/test && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Wall -Werror -S /Users/yijungu/cnumap/backend/valhalla_server/valhalla/test/double_bucket_queue.cc -o CMakeFiles/double_bucket_queue.dir/double_bucket_queue.cc.s

# Object files for target double_bucket_queue
double_bucket_queue_OBJECTS = \
"CMakeFiles/double_bucket_queue.dir/double_bucket_queue.cc.o"

# External object files for target double_bucket_queue
double_bucket_queue_EXTERNAL_OBJECTS =

test/double_bucket_queue: test/CMakeFiles/double_bucket_queue.dir/double_bucket_queue.cc.o
test/double_bucket_queue: test/CMakeFiles/double_bucket_queue.dir/build.make
test/double_bucket_queue: test/libvalhalla_test.a
test/double_bucket_queue: src/libvalhalla.a
test/double_bucket_queue: /opt/homebrew/lib/libprotobuf-lite.29.1.0.dylib
test/double_bucket_queue: /usr/local/lib/libabsl_log_internal_check_op.a
test/double_bucket_queue: /usr/local/lib/libabsl_leak_check.a
test/double_bucket_queue: /usr/local/lib/libabsl_die_if_null.a
test/double_bucket_queue: /usr/local/lib/libabsl_log_internal_conditions.a
test/double_bucket_queue: /usr/local/lib/libabsl_log_internal_message.a
test/double_bucket_queue: /usr/local/lib/libabsl_log_internal_nullguard.a
test/double_bucket_queue: /usr/local/lib/libabsl_examine_stack.a
test/double_bucket_queue: /usr/local/lib/libabsl_log_internal_format.a
test/double_bucket_queue: /usr/local/lib/libabsl_log_internal_proto.a
test/double_bucket_queue: /usr/local/lib/libabsl_log_internal_log_sink_set.a
test/double_bucket_queue: /usr/local/lib/libabsl_log_sink.a
test/double_bucket_queue: /usr/local/lib/libabsl_log_entry.a
test/double_bucket_queue: /usr/local/lib/libabsl_flags_internal.a
test/double_bucket_queue: /usr/local/lib/libabsl_flags_marshalling.a
test/double_bucket_queue: /usr/local/lib/libabsl_flags_reflection.a
test/double_bucket_queue: /usr/local/lib/libabsl_flags_config.a
test/double_bucket_queue: /usr/local/lib/libabsl_flags_program_name.a
test/double_bucket_queue: /usr/local/lib/libabsl_flags_private_handle_accessor.a
test/double_bucket_queue: /usr/local/lib/libabsl_flags_commandlineflag.a
test/double_bucket_queue: /usr/local/lib/libabsl_flags_commandlineflag_internal.a
test/double_bucket_queue: /usr/local/lib/libabsl_log_initialize.a
test/double_bucket_queue: /usr/local/lib/libabsl_log_internal_globals.a
test/double_bucket_queue: /usr/local/lib/libabsl_log_globals.a
test/double_bucket_queue: /usr/local/lib/libabsl_vlog_config_internal.a
test/double_bucket_queue: /usr/local/lib/libabsl_log_internal_fnmatch.a
test/double_bucket_queue: /usr/local/lib/libabsl_raw_hash_set.a
test/double_bucket_queue: /usr/local/lib/libabsl_hash.a
test/double_bucket_queue: /usr/local/lib/libabsl_city.a
test/double_bucket_queue: /usr/local/lib/libabsl_low_level_hash.a
test/double_bucket_queue: /usr/local/lib/libabsl_hashtablez_sampler.a
test/double_bucket_queue: /usr/local/lib/libabsl_random_distributions.a
test/double_bucket_queue: /usr/local/lib/libabsl_random_seed_sequences.a
test/double_bucket_queue: /usr/local/lib/libabsl_random_internal_pool_urbg.a
test/double_bucket_queue: /usr/local/lib/libabsl_random_internal_randen.a
test/double_bucket_queue: /usr/local/lib/libabsl_random_internal_randen_hwaes.a
test/double_bucket_queue: /usr/local/lib/libabsl_random_internal_randen_hwaes_impl.a
test/double_bucket_queue: /usr/local/lib/libabsl_random_internal_randen_slow.a
test/double_bucket_queue: /usr/local/lib/libabsl_random_internal_platform.a
test/double_bucket_queue: /usr/local/lib/libabsl_random_internal_seed_material.a
test/double_bucket_queue: /usr/local/lib/libabsl_random_seed_gen_exception.a
test/double_bucket_queue: /usr/local/lib/libabsl_statusor.a
test/double_bucket_queue: /usr/local/lib/libabsl_status.a
test/double_bucket_queue: /usr/local/lib/libabsl_cord.a
test/double_bucket_queue: /usr/local/lib/libabsl_cordz_info.a
test/double_bucket_queue: /usr/local/lib/libabsl_cord_internal.a
test/double_bucket_queue: /usr/local/lib/libabsl_cordz_functions.a
test/double_bucket_queue: /usr/local/lib/libabsl_exponential_biased.a
test/double_bucket_queue: /usr/local/lib/libabsl_cordz_handle.a
test/double_bucket_queue: /usr/local/lib/libabsl_crc_cord_state.a
test/double_bucket_queue: /usr/local/lib/libabsl_crc32c.a
test/double_bucket_queue: /usr/local/lib/libabsl_crc_internal.a
test/double_bucket_queue: /usr/local/lib/libabsl_crc_cpu_detect.a
test/double_bucket_queue: /usr/local/lib/libabsl_bad_optional_access.a
test/double_bucket_queue: /usr/local/lib/libabsl_strerror.a
test/double_bucket_queue: /usr/local/lib/libabsl_str_format_internal.a
test/double_bucket_queue: /usr/local/lib/libabsl_synchronization.a
test/double_bucket_queue: /usr/local/lib/libabsl_stacktrace.a
test/double_bucket_queue: /usr/local/lib/libabsl_symbolize.a
test/double_bucket_queue: /usr/local/lib/libabsl_debugging_internal.a
test/double_bucket_queue: /usr/local/lib/libabsl_demangle_internal.a
test/double_bucket_queue: /usr/local/lib/libabsl_demangle_rust.a
test/double_bucket_queue: /usr/local/lib/libabsl_decode_rust_punycode.a
test/double_bucket_queue: /usr/local/lib/libabsl_utf8_for_code_point.a
test/double_bucket_queue: /usr/local/lib/libabsl_graphcycles_internal.a
test/double_bucket_queue: /usr/local/lib/libabsl_kernel_timeout_internal.a
test/double_bucket_queue: /usr/local/lib/libabsl_malloc_internal.a
test/double_bucket_queue: /usr/local/lib/libabsl_time.a
test/double_bucket_queue: /usr/local/lib/libabsl_civil_time.a
test/double_bucket_queue: /usr/local/lib/libabsl_time_zone.a
test/double_bucket_queue: /usr/local/lib/libabsl_bad_variant_access.a
test/double_bucket_queue: /usr/local/lib/libabsl_strings.a
test/double_bucket_queue: /usr/local/lib/libabsl_int128.a
test/double_bucket_queue: /usr/local/lib/libabsl_strings_internal.a
test/double_bucket_queue: /usr/local/lib/libabsl_string_view.a
test/double_bucket_queue: /usr/local/lib/libabsl_base.a
test/double_bucket_queue: /usr/local/lib/libabsl_spinlock_wait.a
test/double_bucket_queue: /usr/local/lib/libabsl_throw_delegate.a
test/double_bucket_queue: /usr/local/lib/libabsl_raw_logging_internal.a
test/double_bucket_queue: /usr/local/lib/libabsl_log_severity.a
test/double_bucket_queue: /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.2.sdk/usr/lib/libcurl.tbd
test/double_bucket_queue: /usr/local/lib/libprime_server.dylib
test/double_bucket_queue: /opt/homebrew/Cellar/zeromq/4.3.5_1/lib/libzmq.dylib
test/double_bucket_queue: /opt/homebrew/Cellar/libspatialite/5.1.0_1/lib/libspatialite.dylib
test/double_bucket_queue: /opt/homebrew/lib/libminizip.dylib
test/double_bucket_queue: /opt/homebrew/lib/librttopo.dylib
test/double_bucket_queue: /opt/homebrew/lib/libfreexl.dylib
test/double_bucket_queue: /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.2.sdk/usr/lib/libiconv.tbd
test/double_bucket_queue: /opt/homebrew/lib/libproj.dylib
test/double_bucket_queue: /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.2.sdk/usr/lib/libz.tbd
test/double_bucket_queue: /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.2.sdk/usr/lib/libxml2.tbd
test/double_bucket_queue: /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.2.sdk/usr/lib/libm.tbd
test/double_bucket_queue: /opt/homebrew/opt/sqlite/lib/libsqlite3.dylib
test/double_bucket_queue: /opt/homebrew/Cellar/luajit/2.1.1732813678/lib/libluajit-5.1.dylib
test/double_bucket_queue: lib/libgtest_main.a
test/double_bucket_queue: lib/libgmock.a
test/double_bucket_queue: lib/libgtest.a
test/double_bucket_queue: /opt/homebrew/opt/lz4/lib/liblz4.dylib
test/double_bucket_queue: /opt/homebrew/Cellar/geos/3.13.0/lib/libgeos_c.dylib
test/double_bucket_queue: test/CMakeFiles/double_bucket_queue.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/yijungu/cnumap/backend/valhalla_server/valhalla/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable double_bucket_queue"
	cd /Users/yijungu/cnumap/backend/valhalla_server/valhalla/build/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/double_bucket_queue.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/double_bucket_queue.dir/build: test/double_bucket_queue
.PHONY : test/CMakeFiles/double_bucket_queue.dir/build

test/CMakeFiles/double_bucket_queue.dir/clean:
	cd /Users/yijungu/cnumap/backend/valhalla_server/valhalla/build/test && $(CMAKE_COMMAND) -P CMakeFiles/double_bucket_queue.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/double_bucket_queue.dir/clean

test/CMakeFiles/double_bucket_queue.dir/depend:
	cd /Users/yijungu/cnumap/backend/valhalla_server/valhalla/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/yijungu/cnumap/backend/valhalla_server/valhalla /Users/yijungu/cnumap/backend/valhalla_server/valhalla/test /Users/yijungu/cnumap/backend/valhalla_server/valhalla/build /Users/yijungu/cnumap/backend/valhalla_server/valhalla/build/test /Users/yijungu/cnumap/backend/valhalla_server/valhalla/build/test/CMakeFiles/double_bucket_queue.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : test/CMakeFiles/double_bucket_queue.dir/depend
