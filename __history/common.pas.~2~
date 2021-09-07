unit common;

interface

uses Soap.InvokeRegistry, Soap.SOAPHTTPClient, System.Types, Soap.XSBuiltIns;

const
  IS_OPTN = $0001;
  IS_UNBD = $0002;
  IS_NLBL = $0004;
  IS_UNQL = $0008;

type

  auth                 = class;                 { "http://dpd.ru/ws/calculator/2012-03-20"[GblCplx] }


  // ************************************************************************ //
  // XML       : auth, global, <complexType>
  // Namespace : http://dpd.ru/ws/calculator/2012-03-20
  // ************************************************************************ //
  auth = class(TRemotable)
  private
    FclientNumber: Int64;
    FclientKey: string;
  published
    property clientNumber: Int64   Index (IS_UNQL) read FclientNumber write FclientNumber;
    property clientKey:    string  Index (IS_UNQL) read FclientKey write FclientKey;
  end;

implementation

end.
