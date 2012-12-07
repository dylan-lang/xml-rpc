Module:    dylan-user
Synopsis:  Definitions shared by the XML-RPC client and server
Author:    Carl Gay
Copyright: See LICENSE in this distribution for details.

define library xml-rpc-common
  use base64;
  use common-dylan;
  use io,
    import: { streams, format };
  use system,
    import: { date };
  use xml-parser,
    import: { xml-parser };
  use uncommon-dylan;
  export xml-rpc-common;
end;

define module xml-rpc-common
  use base64,
    import: { base64-decode };
  use common-extensions,
    exclude: { format-to-string };
  use date,
    import: { <date>,
              as-iso8601-string };
  use dylan;
  use format;
  use streams;
  use uncommon-dylan;
  use xml-parser,
    prefix: "xml$";
  export
    <xml-rpc-error>,
    <xml-rpc-parse-error>, xml-rpc-parse-error,
    <xml-rpc-fault>, xml-rpc-fault, fault-code,
    to-xml,
    from-xml,
    find-child,
    *debugging-xml-rpc*,
    strict-mode?,
    set-strict-mode;
end module xml-rpc-common;
