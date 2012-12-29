Module: dylan-user
Synopsis: XML RPC test suite
Copyright: See LICENSE in this distribution for details.


define library xml-rpc-tests
  use common-dylan;
  use http-server-tests,
    import: { http-test-utils };
  use http-server;
  use strings;
  use system,
    import: { locators, operating-system };
  use testworks;
  use xml-rpc-client;
  use xml-rpc-common;
  use xml-rpc-server;
end;

define module xml-rpc-tests
  use common-dylan;
  use http-test-utils,
    import: { fmt, make-server, test-url, with-http-server };
  use http-server,
    import: { add-resource };
  use locators,
    import: { <file-locator>, locator-name };
  use operating-system,
    import: { application-name };
  use strings,
    import: { split };
  use testworks;
  use xml-rpc-client;
  use xml-rpc-common;
  use xml-rpc-server;
end;
