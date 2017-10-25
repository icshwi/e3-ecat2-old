# e3-ecat2

## Dependency on ethercat-hg

```
hg clone http://hg.code.sf.net/p/etherlabmaster/code ethercat-hg

cd ethercat-hg
touch ChangeLog
autoreconf --force --install -v
./configure --disable-8139too
make 
sudo make install
```
```
libraries have been installed in:
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
```
