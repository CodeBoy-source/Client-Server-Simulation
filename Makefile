# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Default target executed when no arguments are given to make.
default_target: all
.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:

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
CMAKE_SOURCE_DIR = /home/briansenas/Desktop/University/SS/P3/cliente_servidor

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/briansenas/Desktop/University/SS/P3/cliente_servidor

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "No interactive CMake dialog available..."
	/usr/bin/cmake -E echo No\ interactive\ CMake\ dialog\ available.
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache
.PHONY : edit_cache/fast

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/usr/bin/cmake --regenerate-during-build -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache
.PHONY : rebuild_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /home/briansenas/Desktop/University/SS/P3/cliente_servidor/CMakeFiles /home/briansenas/Desktop/University/SS/P3/cliente_servidor//CMakeFiles/progress.marks
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /home/briansenas/Desktop/University/SS/P3/cliente_servidor/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean
.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named cliente_servidor

# Build rule for target.
cliente_servidor: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 cliente_servidor
.PHONY : cliente_servidor

# fast build rule for target.
cliente_servidor/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/cliente_servidor.dir/build.make CMakeFiles/cliente_servidor.dir/build
.PHONY : cliente_servidor/fast

#=============================================================================
# Target rules for targets named cliente_servidor_variable

# Build rule for target.
cliente_servidor_variable: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 cliente_servidor_variable
.PHONY : cliente_servidor_variable

# fast build rule for target.
cliente_servidor_variable/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/cliente_servidor_variable.dir/build.make CMakeFiles/cliente_servidor_variable.dir/build
.PHONY : cliente_servidor_variable/fast

home/briansenas/Desktop/University/SS/P3/include/utils.o: home/briansenas/Desktop/University/SS/P3/include/utils.cpp.o
.PHONY : home/briansenas/Desktop/University/SS/P3/include/utils.o

# target to build an object file
home/briansenas/Desktop/University/SS/P3/include/utils.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/cliente_servidor.dir/build.make CMakeFiles/cliente_servidor.dir/home/briansenas/Desktop/University/SS/P3/include/utils.cpp.o
	$(MAKE) $(MAKESILENT) -f CMakeFiles/cliente_servidor_variable.dir/build.make CMakeFiles/cliente_servidor_variable.dir/home/briansenas/Desktop/University/SS/P3/include/utils.cpp.o
.PHONY : home/briansenas/Desktop/University/SS/P3/include/utils.cpp.o

home/briansenas/Desktop/University/SS/P3/include/utils.i: home/briansenas/Desktop/University/SS/P3/include/utils.cpp.i
.PHONY : home/briansenas/Desktop/University/SS/P3/include/utils.i

# target to preprocess a source file
home/briansenas/Desktop/University/SS/P3/include/utils.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/cliente_servidor.dir/build.make CMakeFiles/cliente_servidor.dir/home/briansenas/Desktop/University/SS/P3/include/utils.cpp.i
	$(MAKE) $(MAKESILENT) -f CMakeFiles/cliente_servidor_variable.dir/build.make CMakeFiles/cliente_servidor_variable.dir/home/briansenas/Desktop/University/SS/P3/include/utils.cpp.i
.PHONY : home/briansenas/Desktop/University/SS/P3/include/utils.cpp.i

home/briansenas/Desktop/University/SS/P3/include/utils.s: home/briansenas/Desktop/University/SS/P3/include/utils.cpp.s
.PHONY : home/briansenas/Desktop/University/SS/P3/include/utils.s

# target to generate assembly for a file
home/briansenas/Desktop/University/SS/P3/include/utils.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/cliente_servidor.dir/build.make CMakeFiles/cliente_servidor.dir/home/briansenas/Desktop/University/SS/P3/include/utils.cpp.s
	$(MAKE) $(MAKESILENT) -f CMakeFiles/cliente_servidor_variable.dir/build.make CMakeFiles/cliente_servidor_variable.dir/home/briansenas/Desktop/University/SS/P3/include/utils.cpp.s
.PHONY : home/briansenas/Desktop/University/SS/P3/include/utils.cpp.s

src/cliente_servidor.o: src/cliente_servidor.cpp.o
.PHONY : src/cliente_servidor.o

# target to build an object file
src/cliente_servidor.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/cliente_servidor.dir/build.make CMakeFiles/cliente_servidor.dir/src/cliente_servidor.cpp.o
.PHONY : src/cliente_servidor.cpp.o

src/cliente_servidor.i: src/cliente_servidor.cpp.i
.PHONY : src/cliente_servidor.i

# target to preprocess a source file
src/cliente_servidor.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/cliente_servidor.dir/build.make CMakeFiles/cliente_servidor.dir/src/cliente_servidor.cpp.i
.PHONY : src/cliente_servidor.cpp.i

src/cliente_servidor.s: src/cliente_servidor.cpp.s
.PHONY : src/cliente_servidor.s

# target to generate assembly for a file
src/cliente_servidor.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/cliente_servidor.dir/build.make CMakeFiles/cliente_servidor.dir/src/cliente_servidor.cpp.s
.PHONY : src/cliente_servidor.cpp.s

src/cliente_servidor_variable.o: src/cliente_servidor_variable.cpp.o
.PHONY : src/cliente_servidor_variable.o

# target to build an object file
src/cliente_servidor_variable.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/cliente_servidor_variable.dir/build.make CMakeFiles/cliente_servidor_variable.dir/src/cliente_servidor_variable.cpp.o
.PHONY : src/cliente_servidor_variable.cpp.o

src/cliente_servidor_variable.i: src/cliente_servidor_variable.cpp.i
.PHONY : src/cliente_servidor_variable.i

# target to preprocess a source file
src/cliente_servidor_variable.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/cliente_servidor_variable.dir/build.make CMakeFiles/cliente_servidor_variable.dir/src/cliente_servidor_variable.cpp.i
.PHONY : src/cliente_servidor_variable.cpp.i

src/cliente_servidor_variable.s: src/cliente_servidor_variable.cpp.s
.PHONY : src/cliente_servidor_variable.s

# target to generate assembly for a file
src/cliente_servidor_variable.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/cliente_servidor_variable.dir/build.make CMakeFiles/cliente_servidor_variable.dir/src/cliente_servidor_variable.cpp.s
.PHONY : src/cliente_servidor_variable.cpp.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... edit_cache"
	@echo "... rebuild_cache"
	@echo "... cliente_servidor"
	@echo "... cliente_servidor_variable"
	@echo "... home/briansenas/Desktop/University/SS/P3/include/utils.o"
	@echo "... home/briansenas/Desktop/University/SS/P3/include/utils.i"
	@echo "... home/briansenas/Desktop/University/SS/P3/include/utils.s"
	@echo "... src/cliente_servidor.o"
	@echo "... src/cliente_servidor.i"
	@echo "... src/cliente_servidor.s"
	@echo "... src/cliente_servidor_variable.o"
	@echo "... src/cliente_servidor_variable.i"
	@echo "... src/cliente_servidor_variable.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system

