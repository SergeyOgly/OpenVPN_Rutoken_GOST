# the name of the target operating system
SET(CMAKE_SYSTEM_NAME      Windows)
SET(CMAKE_SYSTEM_PROCESSOR x86_64)

# which compilers to use for C and C++ and ASM-ATT
SET(CMAKE_C_COMPILER       /usr/bin/x86_64-w64-mingw32-gcc )
SET(CMAKE_CXX_COMPILER     /usr/bin/x86_64-w64-mingw32-g++ )
SET(CMAKE_ASM-ATT_COMPILER /usr/bin/x86_64-w64-mingw32-as  )

# here is the target environment located
SET(CMAKE_FIND_ROOT_PATH  /usr/x86_64-w64-mingw32
                          /usr/x86_64-w64-mingw32/sys-root/mingw
    )

# adjust the default behaviour of the FIND_XXX() commands:
# search headers and libraries in the target environment, search 
# programs in the host environment
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)