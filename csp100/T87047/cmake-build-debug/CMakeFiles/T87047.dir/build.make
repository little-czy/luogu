# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.12

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program1\JetBrains\CLion 2018.2.1\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program1\JetBrains\CLion 2018.2.1\bin\cmake\win\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = E:\C_C++\luogu\T87047

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = E:\C_C++\luogu\T87047\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/T87047.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/T87047.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/T87047.dir/flags.make

CMakeFiles/T87047.dir/main.cpp.obj: CMakeFiles/T87047.dir/flags.make
CMakeFiles/T87047.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\C_C++\luogu\T87047\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/T87047.dir/main.cpp.obj"
	D:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\T87047.dir\main.cpp.obj -c E:\C_C++\luogu\T87047\main.cpp

CMakeFiles/T87047.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/T87047.dir/main.cpp.i"
	D:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E E:\C_C++\luogu\T87047\main.cpp > CMakeFiles\T87047.dir\main.cpp.i

CMakeFiles/T87047.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/T87047.dir/main.cpp.s"
	D:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S E:\C_C++\luogu\T87047\main.cpp -o CMakeFiles\T87047.dir\main.cpp.s

# Object files for target T87047
T87047_OBJECTS = \
"CMakeFiles/T87047.dir/main.cpp.obj"

# External object files for target T87047
T87047_EXTERNAL_OBJECTS =

T87047.exe: CMakeFiles/T87047.dir/main.cpp.obj
T87047.exe: CMakeFiles/T87047.dir/build.make
T87047.exe: CMakeFiles/T87047.dir/linklibs.rsp
T87047.exe: CMakeFiles/T87047.dir/objects1.rsp
T87047.exe: CMakeFiles/T87047.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=E:\C_C++\luogu\T87047\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable T87047.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\T87047.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/T87047.dir/build: T87047.exe

.PHONY : CMakeFiles/T87047.dir/build

CMakeFiles/T87047.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\T87047.dir\cmake_clean.cmake
.PHONY : CMakeFiles/T87047.dir/clean

CMakeFiles/T87047.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" E:\C_C++\luogu\T87047 E:\C_C++\luogu\T87047 E:\C_C++\luogu\T87047\cmake-build-debug E:\C_C++\luogu\T87047\cmake-build-debug E:\C_C++\luogu\T87047\cmake-build-debug\CMakeFiles\T87047.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/T87047.dir/depend

