# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.6

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/Zacula/Desktop/Project_01_Quash

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/Zacula/Desktop/Project_01_Quash/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/quash.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/quash.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/quash.dir/flags.make

CMakeFiles/quash.dir/src/parsing/lex.yy.c.o: CMakeFiles/quash.dir/flags.make
CMakeFiles/quash.dir/src/parsing/lex.yy.c.o: ../src/parsing/lex.yy.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Zacula/Desktop/Project_01_Quash/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/quash.dir/src/parsing/lex.yy.c.o"
	/Library/Developer/CommandLineTools/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/quash.dir/src/parsing/lex.yy.c.o   -c /Users/Zacula/Desktop/Project_01_Quash/src/parsing/lex.yy.c

CMakeFiles/quash.dir/src/parsing/lex.yy.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/quash.dir/src/parsing/lex.yy.c.i"
	/Library/Developer/CommandLineTools/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/Zacula/Desktop/Project_01_Quash/src/parsing/lex.yy.c > CMakeFiles/quash.dir/src/parsing/lex.yy.c.i

CMakeFiles/quash.dir/src/parsing/lex.yy.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/quash.dir/src/parsing/lex.yy.c.s"
	/Library/Developer/CommandLineTools/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/Zacula/Desktop/Project_01_Quash/src/parsing/lex.yy.c -o CMakeFiles/quash.dir/src/parsing/lex.yy.c.s

CMakeFiles/quash.dir/src/parsing/lex.yy.c.o.requires:

.PHONY : CMakeFiles/quash.dir/src/parsing/lex.yy.c.o.requires

CMakeFiles/quash.dir/src/parsing/lex.yy.c.o.provides: CMakeFiles/quash.dir/src/parsing/lex.yy.c.o.requires
	$(MAKE) -f CMakeFiles/quash.dir/build.make CMakeFiles/quash.dir/src/parsing/lex.yy.c.o.provides.build
.PHONY : CMakeFiles/quash.dir/src/parsing/lex.yy.c.o.provides

CMakeFiles/quash.dir/src/parsing/lex.yy.c.o.provides.build: CMakeFiles/quash.dir/src/parsing/lex.yy.c.o


CMakeFiles/quash.dir/src/parsing/memory_pool.c.o: CMakeFiles/quash.dir/flags.make
CMakeFiles/quash.dir/src/parsing/memory_pool.c.o: ../src/parsing/memory_pool.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Zacula/Desktop/Project_01_Quash/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/quash.dir/src/parsing/memory_pool.c.o"
	/Library/Developer/CommandLineTools/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/quash.dir/src/parsing/memory_pool.c.o   -c /Users/Zacula/Desktop/Project_01_Quash/src/parsing/memory_pool.c

CMakeFiles/quash.dir/src/parsing/memory_pool.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/quash.dir/src/parsing/memory_pool.c.i"
	/Library/Developer/CommandLineTools/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/Zacula/Desktop/Project_01_Quash/src/parsing/memory_pool.c > CMakeFiles/quash.dir/src/parsing/memory_pool.c.i

CMakeFiles/quash.dir/src/parsing/memory_pool.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/quash.dir/src/parsing/memory_pool.c.s"
	/Library/Developer/CommandLineTools/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/Zacula/Desktop/Project_01_Quash/src/parsing/memory_pool.c -o CMakeFiles/quash.dir/src/parsing/memory_pool.c.s

CMakeFiles/quash.dir/src/parsing/memory_pool.c.o.requires:

.PHONY : CMakeFiles/quash.dir/src/parsing/memory_pool.c.o.requires

CMakeFiles/quash.dir/src/parsing/memory_pool.c.o.provides: CMakeFiles/quash.dir/src/parsing/memory_pool.c.o.requires
	$(MAKE) -f CMakeFiles/quash.dir/build.make CMakeFiles/quash.dir/src/parsing/memory_pool.c.o.provides.build
.PHONY : CMakeFiles/quash.dir/src/parsing/memory_pool.c.o.provides

CMakeFiles/quash.dir/src/parsing/memory_pool.c.o.provides.build: CMakeFiles/quash.dir/src/parsing/memory_pool.c.o


CMakeFiles/quash.dir/src/parsing/parse.tab.c.o: CMakeFiles/quash.dir/flags.make
CMakeFiles/quash.dir/src/parsing/parse.tab.c.o: ../src/parsing/parse.tab.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Zacula/Desktop/Project_01_Quash/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/quash.dir/src/parsing/parse.tab.c.o"
	/Library/Developer/CommandLineTools/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/quash.dir/src/parsing/parse.tab.c.o   -c /Users/Zacula/Desktop/Project_01_Quash/src/parsing/parse.tab.c

CMakeFiles/quash.dir/src/parsing/parse.tab.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/quash.dir/src/parsing/parse.tab.c.i"
	/Library/Developer/CommandLineTools/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/Zacula/Desktop/Project_01_Quash/src/parsing/parse.tab.c > CMakeFiles/quash.dir/src/parsing/parse.tab.c.i

CMakeFiles/quash.dir/src/parsing/parse.tab.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/quash.dir/src/parsing/parse.tab.c.s"
	/Library/Developer/CommandLineTools/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/Zacula/Desktop/Project_01_Quash/src/parsing/parse.tab.c -o CMakeFiles/quash.dir/src/parsing/parse.tab.c.s

CMakeFiles/quash.dir/src/parsing/parse.tab.c.o.requires:

.PHONY : CMakeFiles/quash.dir/src/parsing/parse.tab.c.o.requires

CMakeFiles/quash.dir/src/parsing/parse.tab.c.o.provides: CMakeFiles/quash.dir/src/parsing/parse.tab.c.o.requires
	$(MAKE) -f CMakeFiles/quash.dir/build.make CMakeFiles/quash.dir/src/parsing/parse.tab.c.o.provides.build
.PHONY : CMakeFiles/quash.dir/src/parsing/parse.tab.c.o.provides

CMakeFiles/quash.dir/src/parsing/parse.tab.c.o.provides.build: CMakeFiles/quash.dir/src/parsing/parse.tab.c.o


CMakeFiles/quash.dir/src/parsing/parsing_interface.c.o: CMakeFiles/quash.dir/flags.make
CMakeFiles/quash.dir/src/parsing/parsing_interface.c.o: ../src/parsing/parsing_interface.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Zacula/Desktop/Project_01_Quash/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/quash.dir/src/parsing/parsing_interface.c.o"
	/Library/Developer/CommandLineTools/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/quash.dir/src/parsing/parsing_interface.c.o   -c /Users/Zacula/Desktop/Project_01_Quash/src/parsing/parsing_interface.c

CMakeFiles/quash.dir/src/parsing/parsing_interface.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/quash.dir/src/parsing/parsing_interface.c.i"
	/Library/Developer/CommandLineTools/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/Zacula/Desktop/Project_01_Quash/src/parsing/parsing_interface.c > CMakeFiles/quash.dir/src/parsing/parsing_interface.c.i

CMakeFiles/quash.dir/src/parsing/parsing_interface.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/quash.dir/src/parsing/parsing_interface.c.s"
	/Library/Developer/CommandLineTools/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/Zacula/Desktop/Project_01_Quash/src/parsing/parsing_interface.c -o CMakeFiles/quash.dir/src/parsing/parsing_interface.c.s

CMakeFiles/quash.dir/src/parsing/parsing_interface.c.o.requires:

.PHONY : CMakeFiles/quash.dir/src/parsing/parsing_interface.c.o.requires

CMakeFiles/quash.dir/src/parsing/parsing_interface.c.o.provides: CMakeFiles/quash.dir/src/parsing/parsing_interface.c.o.requires
	$(MAKE) -f CMakeFiles/quash.dir/build.make CMakeFiles/quash.dir/src/parsing/parsing_interface.c.o.provides.build
.PHONY : CMakeFiles/quash.dir/src/parsing/parsing_interface.c.o.provides

CMakeFiles/quash.dir/src/parsing/parsing_interface.c.o.provides.build: CMakeFiles/quash.dir/src/parsing/parsing_interface.c.o


CMakeFiles/quash.dir/src/command.c.o: CMakeFiles/quash.dir/flags.make
CMakeFiles/quash.dir/src/command.c.o: ../src/command.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Zacula/Desktop/Project_01_Quash/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object CMakeFiles/quash.dir/src/command.c.o"
	/Library/Developer/CommandLineTools/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/quash.dir/src/command.c.o   -c /Users/Zacula/Desktop/Project_01_Quash/src/command.c

CMakeFiles/quash.dir/src/command.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/quash.dir/src/command.c.i"
	/Library/Developer/CommandLineTools/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/Zacula/Desktop/Project_01_Quash/src/command.c > CMakeFiles/quash.dir/src/command.c.i

CMakeFiles/quash.dir/src/command.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/quash.dir/src/command.c.s"
	/Library/Developer/CommandLineTools/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/Zacula/Desktop/Project_01_Quash/src/command.c -o CMakeFiles/quash.dir/src/command.c.s

CMakeFiles/quash.dir/src/command.c.o.requires:

.PHONY : CMakeFiles/quash.dir/src/command.c.o.requires

CMakeFiles/quash.dir/src/command.c.o.provides: CMakeFiles/quash.dir/src/command.c.o.requires
	$(MAKE) -f CMakeFiles/quash.dir/build.make CMakeFiles/quash.dir/src/command.c.o.provides.build
.PHONY : CMakeFiles/quash.dir/src/command.c.o.provides

CMakeFiles/quash.dir/src/command.c.o.provides.build: CMakeFiles/quash.dir/src/command.c.o


CMakeFiles/quash.dir/src/execute.c.o: CMakeFiles/quash.dir/flags.make
CMakeFiles/quash.dir/src/execute.c.o: ../src/execute.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Zacula/Desktop/Project_01_Quash/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object CMakeFiles/quash.dir/src/execute.c.o"
	/Library/Developer/CommandLineTools/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/quash.dir/src/execute.c.o   -c /Users/Zacula/Desktop/Project_01_Quash/src/execute.c

CMakeFiles/quash.dir/src/execute.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/quash.dir/src/execute.c.i"
	/Library/Developer/CommandLineTools/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/Zacula/Desktop/Project_01_Quash/src/execute.c > CMakeFiles/quash.dir/src/execute.c.i

CMakeFiles/quash.dir/src/execute.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/quash.dir/src/execute.c.s"
	/Library/Developer/CommandLineTools/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/Zacula/Desktop/Project_01_Quash/src/execute.c -o CMakeFiles/quash.dir/src/execute.c.s

CMakeFiles/quash.dir/src/execute.c.o.requires:

.PHONY : CMakeFiles/quash.dir/src/execute.c.o.requires

CMakeFiles/quash.dir/src/execute.c.o.provides: CMakeFiles/quash.dir/src/execute.c.o.requires
	$(MAKE) -f CMakeFiles/quash.dir/build.make CMakeFiles/quash.dir/src/execute.c.o.provides.build
.PHONY : CMakeFiles/quash.dir/src/execute.c.o.provides

CMakeFiles/quash.dir/src/execute.c.o.provides.build: CMakeFiles/quash.dir/src/execute.c.o


CMakeFiles/quash.dir/src/quash.c.o: CMakeFiles/quash.dir/flags.make
CMakeFiles/quash.dir/src/quash.c.o: ../src/quash.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Zacula/Desktop/Project_01_Quash/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object CMakeFiles/quash.dir/src/quash.c.o"
	/Library/Developer/CommandLineTools/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/quash.dir/src/quash.c.o   -c /Users/Zacula/Desktop/Project_01_Quash/src/quash.c

CMakeFiles/quash.dir/src/quash.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/quash.dir/src/quash.c.i"
	/Library/Developer/CommandLineTools/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/Zacula/Desktop/Project_01_Quash/src/quash.c > CMakeFiles/quash.dir/src/quash.c.i

CMakeFiles/quash.dir/src/quash.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/quash.dir/src/quash.c.s"
	/Library/Developer/CommandLineTools/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/Zacula/Desktop/Project_01_Quash/src/quash.c -o CMakeFiles/quash.dir/src/quash.c.s

CMakeFiles/quash.dir/src/quash.c.o.requires:

.PHONY : CMakeFiles/quash.dir/src/quash.c.o.requires

CMakeFiles/quash.dir/src/quash.c.o.provides: CMakeFiles/quash.dir/src/quash.c.o.requires
	$(MAKE) -f CMakeFiles/quash.dir/build.make CMakeFiles/quash.dir/src/quash.c.o.provides.build
.PHONY : CMakeFiles/quash.dir/src/quash.c.o.provides

CMakeFiles/quash.dir/src/quash.c.o.provides.build: CMakeFiles/quash.dir/src/quash.c.o


CMakeFiles/quash.dir/test-cases/test-setup/delayed_echo.c.o: CMakeFiles/quash.dir/flags.make
CMakeFiles/quash.dir/test-cases/test-setup/delayed_echo.c.o: ../test-cases/test-setup/delayed_echo.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Zacula/Desktop/Project_01_Quash/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object CMakeFiles/quash.dir/test-cases/test-setup/delayed_echo.c.o"
	/Library/Developer/CommandLineTools/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/quash.dir/test-cases/test-setup/delayed_echo.c.o   -c /Users/Zacula/Desktop/Project_01_Quash/test-cases/test-setup/delayed_echo.c

CMakeFiles/quash.dir/test-cases/test-setup/delayed_echo.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/quash.dir/test-cases/test-setup/delayed_echo.c.i"
	/Library/Developer/CommandLineTools/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/Zacula/Desktop/Project_01_Quash/test-cases/test-setup/delayed_echo.c > CMakeFiles/quash.dir/test-cases/test-setup/delayed_echo.c.i

CMakeFiles/quash.dir/test-cases/test-setup/delayed_echo.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/quash.dir/test-cases/test-setup/delayed_echo.c.s"
	/Library/Developer/CommandLineTools/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/Zacula/Desktop/Project_01_Quash/test-cases/test-setup/delayed_echo.c -o CMakeFiles/quash.dir/test-cases/test-setup/delayed_echo.c.s

CMakeFiles/quash.dir/test-cases/test-setup/delayed_echo.c.o.requires:

.PHONY : CMakeFiles/quash.dir/test-cases/test-setup/delayed_echo.c.o.requires

CMakeFiles/quash.dir/test-cases/test-setup/delayed_echo.c.o.provides: CMakeFiles/quash.dir/test-cases/test-setup/delayed_echo.c.o.requires
	$(MAKE) -f CMakeFiles/quash.dir/build.make CMakeFiles/quash.dir/test-cases/test-setup/delayed_echo.c.o.provides.build
.PHONY : CMakeFiles/quash.dir/test-cases/test-setup/delayed_echo.c.o.provides

CMakeFiles/quash.dir/test-cases/test-setup/delayed_echo.c.o.provides.build: CMakeFiles/quash.dir/test-cases/test-setup/delayed_echo.c.o


CMakeFiles/quash.dir/src/JobHandler.c.o: CMakeFiles/quash.dir/flags.make
CMakeFiles/quash.dir/src/JobHandler.c.o: ../src/JobHandler.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Zacula/Desktop/Project_01_Quash/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building C object CMakeFiles/quash.dir/src/JobHandler.c.o"
	/Library/Developer/CommandLineTools/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/quash.dir/src/JobHandler.c.o   -c /Users/Zacula/Desktop/Project_01_Quash/src/JobHandler.c

CMakeFiles/quash.dir/src/JobHandler.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/quash.dir/src/JobHandler.c.i"
	/Library/Developer/CommandLineTools/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/Zacula/Desktop/Project_01_Quash/src/JobHandler.c > CMakeFiles/quash.dir/src/JobHandler.c.i

CMakeFiles/quash.dir/src/JobHandler.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/quash.dir/src/JobHandler.c.s"
	/Library/Developer/CommandLineTools/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/Zacula/Desktop/Project_01_Quash/src/JobHandler.c -o CMakeFiles/quash.dir/src/JobHandler.c.s

CMakeFiles/quash.dir/src/JobHandler.c.o.requires:

.PHONY : CMakeFiles/quash.dir/src/JobHandler.c.o.requires

CMakeFiles/quash.dir/src/JobHandler.c.o.provides: CMakeFiles/quash.dir/src/JobHandler.c.o.requires
	$(MAKE) -f CMakeFiles/quash.dir/build.make CMakeFiles/quash.dir/src/JobHandler.c.o.provides.build
.PHONY : CMakeFiles/quash.dir/src/JobHandler.c.o.provides

CMakeFiles/quash.dir/src/JobHandler.c.o.provides.build: CMakeFiles/quash.dir/src/JobHandler.c.o


CMakeFiles/quash.dir/src/BackGroundJob.c.o: CMakeFiles/quash.dir/flags.make
CMakeFiles/quash.dir/src/BackGroundJob.c.o: ../src/BackGroundJob.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Zacula/Desktop/Project_01_Quash/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building C object CMakeFiles/quash.dir/src/BackGroundJob.c.o"
	/Library/Developer/CommandLineTools/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/quash.dir/src/BackGroundJob.c.o   -c /Users/Zacula/Desktop/Project_01_Quash/src/BackGroundJob.c

CMakeFiles/quash.dir/src/BackGroundJob.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/quash.dir/src/BackGroundJob.c.i"
	/Library/Developer/CommandLineTools/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/Zacula/Desktop/Project_01_Quash/src/BackGroundJob.c > CMakeFiles/quash.dir/src/BackGroundJob.c.i

CMakeFiles/quash.dir/src/BackGroundJob.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/quash.dir/src/BackGroundJob.c.s"
	/Library/Developer/CommandLineTools/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/Zacula/Desktop/Project_01_Quash/src/BackGroundJob.c -o CMakeFiles/quash.dir/src/BackGroundJob.c.s

CMakeFiles/quash.dir/src/BackGroundJob.c.o.requires:

.PHONY : CMakeFiles/quash.dir/src/BackGroundJob.c.o.requires

CMakeFiles/quash.dir/src/BackGroundJob.c.o.provides: CMakeFiles/quash.dir/src/BackGroundJob.c.o.requires
	$(MAKE) -f CMakeFiles/quash.dir/build.make CMakeFiles/quash.dir/src/BackGroundJob.c.o.provides.build
.PHONY : CMakeFiles/quash.dir/src/BackGroundJob.c.o.provides

CMakeFiles/quash.dir/src/BackGroundJob.c.o.provides.build: CMakeFiles/quash.dir/src/BackGroundJob.c.o


CMakeFiles/quash.dir/src/ForeGroundJob.c.o: CMakeFiles/quash.dir/flags.make
CMakeFiles/quash.dir/src/ForeGroundJob.c.o: ../src/ForeGroundJob.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Zacula/Desktop/Project_01_Quash/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building C object CMakeFiles/quash.dir/src/ForeGroundJob.c.o"
	/Library/Developer/CommandLineTools/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/quash.dir/src/ForeGroundJob.c.o   -c /Users/Zacula/Desktop/Project_01_Quash/src/ForeGroundJob.c

CMakeFiles/quash.dir/src/ForeGroundJob.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/quash.dir/src/ForeGroundJob.c.i"
	/Library/Developer/CommandLineTools/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/Zacula/Desktop/Project_01_Quash/src/ForeGroundJob.c > CMakeFiles/quash.dir/src/ForeGroundJob.c.i

CMakeFiles/quash.dir/src/ForeGroundJob.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/quash.dir/src/ForeGroundJob.c.s"
	/Library/Developer/CommandLineTools/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/Zacula/Desktop/Project_01_Quash/src/ForeGroundJob.c -o CMakeFiles/quash.dir/src/ForeGroundJob.c.s

CMakeFiles/quash.dir/src/ForeGroundJob.c.o.requires:

.PHONY : CMakeFiles/quash.dir/src/ForeGroundJob.c.o.requires

CMakeFiles/quash.dir/src/ForeGroundJob.c.o.provides: CMakeFiles/quash.dir/src/ForeGroundJob.c.o.requires
	$(MAKE) -f CMakeFiles/quash.dir/build.make CMakeFiles/quash.dir/src/ForeGroundJob.c.o.provides.build
.PHONY : CMakeFiles/quash.dir/src/ForeGroundJob.c.o.provides

CMakeFiles/quash.dir/src/ForeGroundJob.c.o.provides.build: CMakeFiles/quash.dir/src/ForeGroundJob.c.o


# Object files for target quash
quash_OBJECTS = \
"CMakeFiles/quash.dir/src/parsing/lex.yy.c.o" \
"CMakeFiles/quash.dir/src/parsing/memory_pool.c.o" \
"CMakeFiles/quash.dir/src/parsing/parse.tab.c.o" \
"CMakeFiles/quash.dir/src/parsing/parsing_interface.c.o" \
"CMakeFiles/quash.dir/src/command.c.o" \
"CMakeFiles/quash.dir/src/execute.c.o" \
"CMakeFiles/quash.dir/src/quash.c.o" \
"CMakeFiles/quash.dir/test-cases/test-setup/delayed_echo.c.o" \
"CMakeFiles/quash.dir/src/JobHandler.c.o" \
"CMakeFiles/quash.dir/src/BackGroundJob.c.o" \
"CMakeFiles/quash.dir/src/ForeGroundJob.c.o"

# External object files for target quash
quash_EXTERNAL_OBJECTS =

quash: CMakeFiles/quash.dir/src/parsing/lex.yy.c.o
quash: CMakeFiles/quash.dir/src/parsing/memory_pool.c.o
quash: CMakeFiles/quash.dir/src/parsing/parse.tab.c.o
quash: CMakeFiles/quash.dir/src/parsing/parsing_interface.c.o
quash: CMakeFiles/quash.dir/src/command.c.o
quash: CMakeFiles/quash.dir/src/execute.c.o
quash: CMakeFiles/quash.dir/src/quash.c.o
quash: CMakeFiles/quash.dir/test-cases/test-setup/delayed_echo.c.o
quash: CMakeFiles/quash.dir/src/JobHandler.c.o
quash: CMakeFiles/quash.dir/src/BackGroundJob.c.o
quash: CMakeFiles/quash.dir/src/ForeGroundJob.c.o
quash: CMakeFiles/quash.dir/build.make
quash: CMakeFiles/quash.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/Zacula/Desktop/Project_01_Quash/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Linking C executable quash"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/quash.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/quash.dir/build: quash

.PHONY : CMakeFiles/quash.dir/build

CMakeFiles/quash.dir/requires: CMakeFiles/quash.dir/src/parsing/lex.yy.c.o.requires
CMakeFiles/quash.dir/requires: CMakeFiles/quash.dir/src/parsing/memory_pool.c.o.requires
CMakeFiles/quash.dir/requires: CMakeFiles/quash.dir/src/parsing/parse.tab.c.o.requires
CMakeFiles/quash.dir/requires: CMakeFiles/quash.dir/src/parsing/parsing_interface.c.o.requires
CMakeFiles/quash.dir/requires: CMakeFiles/quash.dir/src/command.c.o.requires
CMakeFiles/quash.dir/requires: CMakeFiles/quash.dir/src/execute.c.o.requires
CMakeFiles/quash.dir/requires: CMakeFiles/quash.dir/src/quash.c.o.requires
CMakeFiles/quash.dir/requires: CMakeFiles/quash.dir/test-cases/test-setup/delayed_echo.c.o.requires
CMakeFiles/quash.dir/requires: CMakeFiles/quash.dir/src/JobHandler.c.o.requires
CMakeFiles/quash.dir/requires: CMakeFiles/quash.dir/src/BackGroundJob.c.o.requires
CMakeFiles/quash.dir/requires: CMakeFiles/quash.dir/src/ForeGroundJob.c.o.requires

.PHONY : CMakeFiles/quash.dir/requires

CMakeFiles/quash.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/quash.dir/cmake_clean.cmake
.PHONY : CMakeFiles/quash.dir/clean

CMakeFiles/quash.dir/depend:
	cd /Users/Zacula/Desktop/Project_01_Quash/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/Zacula/Desktop/Project_01_Quash /Users/Zacula/Desktop/Project_01_Quash /Users/Zacula/Desktop/Project_01_Quash/cmake-build-debug /Users/Zacula/Desktop/Project_01_Quash/cmake-build-debug /Users/Zacula/Desktop/Project_01_Quash/cmake-build-debug/CMakeFiles/quash.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/quash.dir/depend

