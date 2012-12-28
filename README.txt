This library is normally used with the http-server library.  Compile
and run the tests as follows::

  $ git clone git@github.com:dylan-lang/opendylan
  $ git clone git@github.com:dylan-lang/http
  $ git clone git@github.com:dylan-lang/xml-rpc
  $ OPEN_DYLAN_USER_REGISTRIES=`pwd`/xml-rpc/registry:`pwd`/http/registry:`pwd`/opendylan/sources/registry dylan-compile -build xml-rpc-test-suite
  $ _build/bin/xml-rpc-test-suite
