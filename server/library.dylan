Module: dylan-user
Synopsis:  XML-RPC server
Author:    Carl Gay
Copyright: See LICENSE in this distribution for details.

define library xml-rpc-server
  use common-dylan;
  use http-common;
  use http-server;
  use io,
    import: { streams };
  use xml-parser;
  use xml-rpc-common;

  export xml-rpc-server;
end;

define module xml-rpc-server
  use common-dylan;
  use http-common,
    import: { request-content, set-header };
  use http-server;
  use streams,
    import: { with-output-to-string, write };
  use xml-parser,
    prefix: "xml$";
  use xml-rpc-common;

  export
    $default-xml-rpc-url,
    <xml-rpc-server>,
    debug?-setter,
    error-fault-code,
    error-fault-code-setter,
    register-xml-rpc-method,
    xml-rpc-server-definer;
end module xml-rpc-server;
