#source: pr21389.s
#ld: -shared --version-script pr21389.map -soname=pr21389.so
#readelf: -d
#target: *-*-linux* *-*-gnu* arm*-*-uclinuxfdpiceabi
#xfail: h8300-*-*

#...
 0x[0-9a-f]* \(SONAME\) +Library soname: \[pr21389.so\]
#pass
