include ${REQUIRE_TOOLS}/driver.makefile

#
#
# The following lines must be updated according to your ecat2
#
#


# PROJECT=ecat2
# BUILDCLASSES += Linux

USR_CFLAGS += -fPIC
# USR_LDFLAGS += -L /opt/etherlab/lib
# USR_LDFLAGS += -lethercat
USR_LDFLAGS += -Wl,-rpath -Wl,/opt/etherlab/lib


# ibraries have been installed in:
#    /opt/etherlab/lib

# If you ever happen to want to link against installed libraries
# in a given directory, LIBDIR, you must either use libtool, and
# specify the full pathname of the library, or use the `-LLIBDIR'
# flag during linking and do at least one of the following:
#    - add LIBDIR to the `LD_LIBRARY_PATH' environment variable
#      during execution
#    - add LIBDIR to the `LD_RUN_PATH' environment variable
#      during linking
#    - use the `-Wl,-rpath -Wl,LIBDIR' linker flag
#    - have your system administrator add LIBDIR to `/etc/ld.so.conf'
