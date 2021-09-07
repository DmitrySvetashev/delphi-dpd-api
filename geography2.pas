// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : https://wstest.dpd.ru/services/geography2?wsdl
//  >Import : https://wstest.dpd.ru/services/geography2?wsdl>0
//  >Import : http://wstest.dpd.ru/services/geography2?xsd=1
// Encoding : UTF-8
// Version  : 1.0
// (05.09.2021 0:09:52 - - $Rev: 96726 $)
// ************************************************************************ //

unit geography2;

interface

uses common, Soap.InvokeRegistry, Soap.SOAPHTTPClient, System.Types, Soap.XSBuiltIns;

const
  IS_OPTN = $0001;
  IS_UNBD = $0002;
  IS_NLBL = $0004;
  IS_UNQL = $0008;


type

  // ************************************************************************ //
  // The following types, referred to in the WSDL document are not being represented
  // in this file. They are either aliases[@] of other types represented or were referred
  // to but never[!] declared in the document. The types from the latter category
  // typically map to predefined/known XML or Embarcadero types; however, they could also 
  // indicate incorrect WSDL documents that failed to declare or import a schema type.
  // ************************************************************************ //
  // !:int             - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:decimal         - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:string          - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:long            - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:date            - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:boolean         - "http://www.w3.org/2001/XMLSchema"[Gbl]

  geoCoordinates       = class;                 { "http://dpd.ru/ws/geography/2015-05-20"[GblCplx] }
  timetable            = class;                 { "http://dpd.ru/ws/geography/2015-05-20"[GblCplx] }
  extraServiceParam    = class;                 { "http://dpd.ru/ws/geography/2015-05-20"[GblCplx] }
  schedule             = class;                 { "http://dpd.ru/ws/geography/2015-05-20"[GblCplx] }
  extraService         = class;                 { "http://dpd.ru/ws/geography/2015-05-20"[GblCplx] }
  dpdCitiesCashPayRequest = class;              { "http://dpd.ru/ws/geography/2015-05-20"[GblCplx] }
  terminalStoragePeriods = class;               { "http://dpd.ru/ws/geography/2015-05-20"[GblCplx] }
  storagePeriod        = class;                 { "http://dpd.ru/ws/geography/2015-05-20"[GblCplx] }
  WSFault              = class;                 { "http://dpd.ru/ws/geography/2015-05-20"[Flt][GblElm] }
  storagePeriodRequest = class;                 { "http://dpd.ru/ws/geography/2015-05-20"[GblCplx] }
  city                 = class;                 { "http://dpd.ru/ws/geography/2015-05-20"[GblCplx] }
  address              = class;                 { "http://dpd.ru/ws/geography/2015-05-20"[GblCplx] }
  terminalSelf         = class;                 { "http://dpd.ru/ws/geography/2015-05-20"[GblCplx] }
  dpdParcelShopRequest = class;                 { "http://dpd.ru/ws/geography/2015-05-20"[GblCplx] }
  limits               = class;                 { "http://dpd.ru/ws/geography/2015-05-20"[GblCplx] }
  parcelShop           = class;                 { "http://dpd.ru/ws/geography/2015-05-20"[GblCplx] }
  dpdPossibleESResult  = class;                 { "http://dpd.ru/ws/geography/2015-05-20"[GblCplx] }
  dpdPossibleESPickupDelivery = class;          { "http://dpd.ru/ws/geography/2015-05-20"[GblCplx] }
  WSFault2             = class;                 { "http://dpd.ru/ws/geography/2015-05-20"[GblCplx] }
  dpdPossibleESRequest = class;                 { "http://dpd.ru/ws/geography/2015-05-20"[GblCplx] }
  possibleExtraService = class;                 { "http://dpd.ru/ws/geography/2015-05-20"[GblCplx] }

  Array_Of_possibleExtraService = array of possibleExtraService;   { "http://dpd.ru/ws/geography/2015-05-20"[GblUbnd] }
  Array_Of_storagePeriod = array of storagePeriod;   { "http://dpd.ru/ws/geography/2015-05-20"[GblUbnd] }
  getCitiesCashPayResponse = array of city;     { "http://dpd.ru/ws/geography/2015-05-20"[Lit][GblCplx] }
  Array_Of_extraServiceParam = array of extraServiceParam;   { "http://dpd.ru/ws/geography/2015-05-20"[GblUbnd] }
  Array_Of_extraService = array of extraService;   { "http://dpd.ru/ws/geography/2015-05-20"[GblUbnd] }
  Array_Of_schedule = array of schedule;        { "http://dpd.ru/ws/geography/2015-05-20"[GblUbnd] }
  dpdTerminals = array of terminalStoragePeriods;   { "http://dpd.ru/ws/geography/2015-05-20"[GblCplx] }
  Array_Of_timetable = array of timetable;      { "http://dpd.ru/ws/geography/2015-05-20"[GblUbnd] }


  // ************************************************************************ //
  // XML       : geoCoordinates, global, <complexType>
  // Namespace : http://dpd.ru/ws/geography/2015-05-20
  // ************************************************************************ //
  geoCoordinates = class(TRemotable)
  private
    Flatitude: TXSDecimal;
    Flatitude_Specified: boolean;
    Flongitude: TXSDecimal;
    Flongitude_Specified: boolean;
    procedure Setlatitude(Index: Integer; const ATXSDecimal: TXSDecimal);
    function  latitude_Specified(Index: Integer): boolean;
    procedure Setlongitude(Index: Integer; const ATXSDecimal: TXSDecimal);
    function  longitude_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property latitude:  TXSDecimal  Index (IS_OPTN or IS_UNQL) read Flatitude write Setlatitude stored latitude_Specified;
    property longitude: TXSDecimal  Index (IS_OPTN or IS_UNQL) read Flongitude write Setlongitude stored longitude_Specified;
  end;



  // ************************************************************************ //
  // XML       : timetable, global, <complexType>
  // Namespace : http://dpd.ru/ws/geography/2015-05-20
  // ************************************************************************ //
  timetable = class(TRemotable)
  private
    FweekDays: string;
    FweekDays_Specified: boolean;
    FworkTime: string;
    FworkTime_Specified: boolean;
    procedure SetweekDays(Index: Integer; const Astring: string);
    function  weekDays_Specified(Index: Integer): boolean;
    procedure SetworkTime(Index: Integer; const Astring: string);
    function  workTime_Specified(Index: Integer): boolean;
  published
    property weekDays: string  Index (IS_OPTN or IS_UNQL) read FweekDays write SetweekDays stored weekDays_Specified;
    property workTime: string  Index (IS_OPTN or IS_UNQL) read FworkTime write SetworkTime stored workTime_Specified;
  end;



  // ************************************************************************ //
  // XML       : extraServiceParam, global, <complexType>
  // Namespace : http://dpd.ru/ws/geography/2015-05-20
  // ************************************************************************ //
  extraServiceParam = class(TRemotable)
  private
    Fname_: string;
    Fname__Specified: boolean;
    Fvalue: string;
    Fvalue_Specified: boolean;
    procedure Setname_(Index: Integer; const Astring: string);
    function  name__Specified(Index: Integer): boolean;
    procedure Setvalue(Index: Integer; const Astring: string);
    function  value_Specified(Index: Integer): boolean;
  published
    property name_: string  Index (IS_OPTN or IS_UNQL) read Fname_ write Setname_ stored name__Specified;
    property value: string  Index (IS_OPTN or IS_UNQL) read Fvalue write Setvalue stored value_Specified;
  end;



  // ************************************************************************ //
  // XML       : schedule, global, <complexType>
  // Namespace : http://dpd.ru/ws/geography/2015-05-20
  // ************************************************************************ //
  schedule = class(TRemotable)
  private
    Foperation: string;
    Foperation_Specified: boolean;
    Ftimetable: Array_Of_timetable;
    Ftimetable_Specified: boolean;
    procedure Setoperation(Index: Integer; const Astring: string);
    function  operation_Specified(Index: Integer): boolean;
    procedure Settimetable(Index: Integer; const AArray_Of_timetable: Array_Of_timetable);
    function  timetable_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property operation: string              Index (IS_OPTN or IS_UNQL) read Foperation write Setoperation stored operation_Specified;
    property timetable: Array_Of_timetable  Index (IS_OPTN or IS_UNBD or IS_UNQL) read Ftimetable write Settimetable stored timetable_Specified;
  end;



  // ************************************************************************ //
  // XML       : extraService, global, <complexType>
  // Namespace : http://dpd.ru/ws/geography/2015-05-20
  // ************************************************************************ //
  extraService = class(TRemotable)
  private
    FesCode: string;
    FesCode_Specified: boolean;
    Fparams: Array_Of_extraServiceParam;
    Fparams_Specified: boolean;
    procedure SetesCode(Index: Integer; const Astring: string);
    function  esCode_Specified(Index: Integer): boolean;
    procedure Setparams(Index: Integer; const AArray_Of_extraServiceParam: Array_Of_extraServiceParam);
    function  params_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property esCode: string                      Index (IS_OPTN or IS_UNQL) read FesCode write SetesCode stored esCode_Specified;
    property params: Array_Of_extraServiceParam  Index (IS_OPTN or IS_UNBD or IS_UNQL) read Fparams write Setparams stored params_Specified;
  end;

  services   = array of string;                 { "http://dpd.ru/ws/geography/2015-05-20"[Cplx] }


  // ************************************************************************ //
  // XML       : dpdCitiesCashPayRequest, global, <complexType>
  // Namespace : http://dpd.ru/ws/geography/2015-05-20
  // ************************************************************************ //
  dpdCitiesCashPayRequest = class(TRemotable)
  private
    Fauth: auth;
    FcountryCode: string;
    FcountryCode_Specified: boolean;
    procedure SetcountryCode(Index: Integer; const Astring: string);
    function  countryCode_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property auth:        auth    Index (IS_UNQL) read Fauth write Fauth;
    property countryCode: string  Index (IS_OPTN or IS_UNQL) read FcountryCode write SetcountryCode stored countryCode_Specified;
  end;



  // ************************************************************************ //
  // XML       : terminalStoragePeriods, global, <complexType>
  // Namespace : http://dpd.ru/ws/geography/2015-05-20
  // ************************************************************************ //
  terminalStoragePeriods = class(TRemotable)
  private
    FterminalCode: string;
    FterminalCode_Specified: boolean;
    Fservices: Array_Of_storagePeriod;
    Fservices_Specified: boolean;
    procedure SetterminalCode(Index: Integer; const Astring: string);
    function  terminalCode_Specified(Index: Integer): boolean;
    procedure Setservices(Index: Integer; const AArray_Of_storagePeriod: Array_Of_storagePeriod);
    function  services_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property terminalCode: string                  Index (IS_OPTN or IS_UNQL) read FterminalCode write SetterminalCode stored terminalCode_Specified;
    property services:     Array_Of_storagePeriod  Index (IS_OPTN or IS_UNBD or IS_UNQL) read Fservices write Setservices stored services_Specified;
  end;



  // ************************************************************************ //
  // XML       : storagePeriod, global, <complexType>
  // Namespace : http://dpd.ru/ws/geography/2015-05-20
  // ************************************************************************ //
  storagePeriod = class(TRemotable)
  private
    FserviceCode: string;
    FserviceCode_Specified: boolean;
    Fdays: Integer;
    procedure SetserviceCode(Index: Integer; const Astring: string);
    function  serviceCode_Specified(Index: Integer): boolean;
  published
    property serviceCode: string   Index (IS_OPTN or IS_UNQL) read FserviceCode write SetserviceCode stored serviceCode_Specified;
    property days:        Integer  Index (IS_UNQL) read Fdays write Fdays;
  end;



  // ************************************************************************ //
  // XML       : WSFault, global, <element>
  // Namespace : http://dpd.ru/ws/geography/2015-05-20
  // Info      : Fault
  // Base Types: WSFault
  // ************************************************************************ //
  WSFault = class(ERemotableException)
  private
    Fcode: string;
    Fcode_Specified: boolean;
    Fmessage_: string;
    Fmessage__Specified: boolean;
    procedure Setcode(Index: Integer; const Astring: string);
    function  code_Specified(Index: Integer): boolean;
    procedure Setmessage_(Index: Integer; const Astring: string);
    function  message__Specified(Index: Integer): boolean;
  published
    property code:     string  Index (IS_OPTN or IS_UNQL) read Fcode write Setcode stored code_Specified;
    property message_: string  Index (IS_OPTN or IS_UNQL) read Fmessage_ write Setmessage_ stored message__Specified;
  end;



  // ************************************************************************ //
  // XML       : storagePeriodRequest, global, <complexType>
  // Namespace : http://dpd.ru/ws/geography/2015-05-20
  // ************************************************************************ //
  storagePeriodRequest = class(TRemotable)
  private
    Fauth: auth;
    FterminalCode: string;
    FserviceCode: string;
    FserviceCode_Specified: boolean;
    procedure SetserviceCode(Index: Integer; const Astring: string);
    function  serviceCode_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property auth:         auth    Index (IS_UNQL) read Fauth write Fauth;
    property terminalCode: string  Index (IS_UNQL) read FterminalCode write FterminalCode;
    property serviceCode:  string  Index (IS_OPTN or IS_UNQL) read FserviceCode write SetserviceCode stored serviceCode_Specified;
  end;



  // ************************************************************************ //
  // XML       : city, global, <complexType>
  // Namespace : http://dpd.ru/ws/geography/2015-05-20
  // ************************************************************************ //
  city = class(TRemotable)
  private
    FcityId: Int64;
    FcityId_Specified: boolean;
    FcountryCode: string;
    FcountryCode_Specified: boolean;
    FcountryName: string;
    FcountryName_Specified: boolean;
    FregionCode: Integer;
    FregionCode_Specified: boolean;
    FregionName: string;
    FregionName_Specified: boolean;
    FcityCode: string;
    FcityCode_Specified: boolean;
    FcityName: string;
    FcityName_Specified: boolean;
    Fabbreviation: string;
    Fabbreviation_Specified: boolean;
    FindexMin: string;
    FindexMin_Specified: boolean;
    FindexMax: string;
    FindexMax_Specified: boolean;
    procedure SetcityId(Index: Integer; const AInt64: Int64);
    function  cityId_Specified(Index: Integer): boolean;
    procedure SetcountryCode(Index: Integer; const Astring: string);
    function  countryCode_Specified(Index: Integer): boolean;
    procedure SetcountryName(Index: Integer; const Astring: string);
    function  countryName_Specified(Index: Integer): boolean;
    procedure SetregionCode(Index: Integer; const AInteger: Integer);
    function  regionCode_Specified(Index: Integer): boolean;
    procedure SetregionName(Index: Integer; const Astring: string);
    function  regionName_Specified(Index: Integer): boolean;
    procedure SetcityCode(Index: Integer; const Astring: string);
    function  cityCode_Specified(Index: Integer): boolean;
    procedure SetcityName(Index: Integer; const Astring: string);
    function  cityName_Specified(Index: Integer): boolean;
    procedure Setabbreviation(Index: Integer; const Astring: string);
    function  abbreviation_Specified(Index: Integer): boolean;
    procedure SetindexMin(Index: Integer; const Astring: string);
    function  indexMin_Specified(Index: Integer): boolean;
    procedure SetindexMax(Index: Integer; const Astring: string);
    function  indexMax_Specified(Index: Integer): boolean;
  published
    property cityId:       Int64    Index (IS_OPTN or IS_UNQL) read FcityId write SetcityId stored cityId_Specified;
    property countryCode:  string   Index (IS_OPTN or IS_UNQL) read FcountryCode write SetcountryCode stored countryCode_Specified;
    property countryName:  string   Index (IS_OPTN or IS_UNQL) read FcountryName write SetcountryName stored countryName_Specified;
    property regionCode:   Integer  Index (IS_OPTN or IS_UNQL) read FregionCode write SetregionCode stored regionCode_Specified;
    property regionName:   string   Index (IS_OPTN or IS_UNQL) read FregionName write SetregionName stored regionName_Specified;
    property cityCode:     string   Index (IS_OPTN or IS_UNQL) read FcityCode write SetcityCode stored cityCode_Specified;
    property cityName:     string   Index (IS_OPTN or IS_UNQL) read FcityName write SetcityName stored cityName_Specified;
    property abbreviation: string   Index (IS_OPTN or IS_UNQL) read Fabbreviation write Setabbreviation stored abbreviation_Specified;
    property indexMin:     string   Index (IS_OPTN or IS_UNQL) read FindexMin write SetindexMin stored indexMin_Specified;
    property indexMax:     string   Index (IS_OPTN or IS_UNQL) read FindexMax write SetindexMax stored indexMax_Specified;
  end;


  // ************************************************************************ //
  // XML       : address, global, <complexType>
  // Namespace : http://dpd.ru/ws/geography/2015-05-20
  // ************************************************************************ //
  address = class(TRemotable)
  private
    FcityId: Int64;
    FcityId_Specified: boolean;
    FcountryCode: string;
    FcountryCode_Specified: boolean;
    FregionCode: string;
    FregionCode_Specified: boolean;
    FregionName: string;
    FregionName_Specified: boolean;
    FcityCode: string;
    FcityCode_Specified: boolean;
    FcityName: string;
    FcityName_Specified: boolean;
    Findex_: string;
    Findex__Specified: boolean;
    Fstreet: string;
    Fstreet_Specified: boolean;
    FstreetAbbr: string;
    FstreetAbbr_Specified: boolean;
    FhouseNo: string;
    FhouseNo_Specified: boolean;
    Fbuilding: string;
    Fbuilding_Specified: boolean;
    Fstructure: string;
    Fstructure_Specified: boolean;
    Fownership: string;
    Fownership_Specified: boolean;
    Fdescript: string;
    Fdescript_Specified: boolean;
    procedure SetcityId(Index: Integer; const AInt64: Int64);
    function  cityId_Specified(Index: Integer): boolean;
    procedure SetcountryCode(Index: Integer; const Astring: string);
    function  countryCode_Specified(Index: Integer): boolean;
    procedure SetregionCode(Index: Integer; const Astring: string);
    function  regionCode_Specified(Index: Integer): boolean;
    procedure SetregionName(Index: Integer; const Astring: string);
    function  regionName_Specified(Index: Integer): boolean;
    procedure SetcityCode(Index: Integer; const Astring: string);
    function  cityCode_Specified(Index: Integer): boolean;
    procedure SetcityName(Index: Integer; const Astring: string);
    function  cityName_Specified(Index: Integer): boolean;
    procedure Setindex_(Index: Integer; const Astring: string);
    function  index__Specified(Index: Integer): boolean;
    procedure Setstreet(Index: Integer; const Astring: string);
    function  street_Specified(Index: Integer): boolean;
    procedure SetstreetAbbr(Index: Integer; const Astring: string);
    function  streetAbbr_Specified(Index: Integer): boolean;
    procedure SethouseNo(Index: Integer; const Astring: string);
    function  houseNo_Specified(Index: Integer): boolean;
    procedure Setbuilding(Index: Integer; const Astring: string);
    function  building_Specified(Index: Integer): boolean;
    procedure Setstructure(Index: Integer; const Astring: string);
    function  structure_Specified(Index: Integer): boolean;
    procedure Setownership(Index: Integer; const Astring: string);
    function  ownership_Specified(Index: Integer): boolean;
    procedure Setdescript(Index: Integer; const Astring: string);
    function  descript_Specified(Index: Integer): boolean;
  published
    property cityId:      Int64   Index (IS_OPTN or IS_UNQL) read FcityId write SetcityId stored cityId_Specified;
    property countryCode: string  Index (IS_OPTN or IS_UNQL) read FcountryCode write SetcountryCode stored countryCode_Specified;
    property regionCode:  string  Index (IS_OPTN or IS_UNQL) read FregionCode write SetregionCode stored regionCode_Specified;
    property regionName:  string  Index (IS_OPTN or IS_UNQL) read FregionName write SetregionName stored regionName_Specified;
    property cityCode:    string  Index (IS_OPTN or IS_UNQL) read FcityCode write SetcityCode stored cityCode_Specified;
    property cityName:    string  Index (IS_OPTN or IS_UNQL) read FcityName write SetcityName stored cityName_Specified;
    property index_:      string  Index (IS_OPTN or IS_UNQL) read Findex_ write Setindex_ stored index__Specified;
    property street:      string  Index (IS_OPTN or IS_UNQL) read Fstreet write Setstreet stored street_Specified;
    property streetAbbr:  string  Index (IS_OPTN or IS_UNQL) read FstreetAbbr write SetstreetAbbr stored streetAbbr_Specified;
    property houseNo:     string  Index (IS_OPTN or IS_UNQL) read FhouseNo write SethouseNo stored houseNo_Specified;
    property building:    string  Index (IS_OPTN or IS_UNQL) read Fbuilding write Setbuilding stored building_Specified;
    property structure:   string  Index (IS_OPTN or IS_UNQL) read Fstructure write Setstructure stored structure_Specified;
    property ownership:   string  Index (IS_OPTN or IS_UNQL) read Fownership write Setownership stored ownership_Specified;
    property descript:    string  Index (IS_OPTN or IS_UNQL) read Fdescript write Setdescript stored descript_Specified;
  end;



  // ************************************************************************ //
  // XML       : terminalSelf, global, <complexType>
  // Namespace : http://dpd.ru/ws/geography/2015-05-20
  // ************************************************************************ //
  terminalSelf = class(TRemotable)
  private
    FterminalCode: string;
    FterminalCode_Specified: boolean;
    FterminalName: string;
    FterminalName_Specified: boolean;
    Faddress: address;
    Faddress_Specified: boolean;
    FgeoCoordinates: geoCoordinates;
    FgeoCoordinates_Specified: boolean;
    Fschedule: Array_Of_schedule;
    Fschedule_Specified: boolean;
    FextraService: Array_Of_extraService;
    FextraService_Specified: boolean;
    Fservices: services;
    Fservices_Specified: boolean;
    procedure SetterminalCode(Index: Integer; const Astring: string);
    function  terminalCode_Specified(Index: Integer): boolean;
    procedure SetterminalName(Index: Integer; const Astring: string);
    function  terminalName_Specified(Index: Integer): boolean;
    procedure Setaddress(Index: Integer; const Aaddress: address);
    function  address_Specified(Index: Integer): boolean;
    procedure SetgeoCoordinates(Index: Integer; const AgeoCoordinates: geoCoordinates);
    function  geoCoordinates_Specified(Index: Integer): boolean;
    procedure Setschedule(Index: Integer; const AArray_Of_schedule: Array_Of_schedule);
    function  schedule_Specified(Index: Integer): boolean;
    procedure SetextraService(Index: Integer; const AArray_Of_extraService: Array_Of_extraService);
    function  extraService_Specified(Index: Integer): boolean;
    procedure Setservices(Index: Integer; const Aservices: services);
    function  services_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property terminalCode:   string                 Index (IS_OPTN or IS_UNQL) read FterminalCode write SetterminalCode stored terminalCode_Specified;
    property terminalName:   string                 Index (IS_OPTN or IS_UNQL) read FterminalName write SetterminalName stored terminalName_Specified;
    property address:        address                Index (IS_OPTN or IS_UNQL) read Faddress write Setaddress stored address_Specified;
    property geoCoordinates: geoCoordinates         Index (IS_OPTN or IS_UNQL) read FgeoCoordinates write SetgeoCoordinates stored geoCoordinates_Specified;
    property schedule:       Array_Of_schedule      Index (IS_OPTN or IS_UNBD or IS_UNQL) read Fschedule write Setschedule stored schedule_Specified;
    property extraService:   Array_Of_extraService  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FextraService write SetextraService stored extraService_Specified;
    property services:       services               Index (IS_OPTN or IS_UNQL) read Fservices write Setservices stored services_Specified;
  end;

  selfTerminals = array of terminalSelf;        { "http://dpd.ru/ws/geography/2015-05-20"[GblCplx] }
  dpdParcelShops = array of parcelShop;         { "http://dpd.ru/ws/geography/2015-05-20"[GblCplx] }


  // ************************************************************************ //
  // XML       : dpdParcelShopRequest, global, <complexType>
  // Namespace : http://dpd.ru/ws/geography/2015-05-20
  // ************************************************************************ //
  dpdParcelShopRequest = class(TRemotable)
  private
    Fauth: auth;
    FcountryCode: string;
    FcountryCode_Specified: boolean;
    FregionCode: string;
    FregionCode_Specified: boolean;
    FcityCode: string;
    FcityCode_Specified: boolean;
    FcityName: string;
    FcityName_Specified: boolean;
    procedure SetcountryCode(Index: Integer; const Astring: string);
    function  countryCode_Specified(Index: Integer): boolean;
    procedure SetregionCode(Index: Integer; const Astring: string);
    function  regionCode_Specified(Index: Integer): boolean;
    procedure SetcityCode(Index: Integer; const Astring: string);
    function  cityCode_Specified(Index: Integer): boolean;
    procedure SetcityName(Index: Integer; const Astring: string);
    function  cityName_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property auth:        auth    Index (IS_UNQL) read Fauth write Fauth;
    property countryCode: string  Index (IS_OPTN or IS_UNQL) read FcountryCode write SetcountryCode stored countryCode_Specified;
    property regionCode:  string  Index (IS_OPTN or IS_UNQL) read FregionCode write SetregionCode stored regionCode_Specified;
    property cityCode:    string  Index (IS_OPTN or IS_UNQL) read FcityCode write SetcityCode stored cityCode_Specified;
    property cityName:    string  Index (IS_OPTN or IS_UNQL) read FcityName write SetcityName stored cityName_Specified;
  end;

  services2  = array of string;                 { "http://dpd.ru/ws/geography/2015-05-20"[Cplx] }


  // ************************************************************************ //
  // XML       : limits, global, <complexType>
  // Namespace : http://dpd.ru/ws/geography/2015-05-20
  // ************************************************************************ //
  limits = class(TRemotable)
  private
    FmaxShipmentWeight: TXSDecimal;
    FmaxShipmentWeight_Specified: boolean;
    FmaxWeight: TXSDecimal;
    FmaxWeight_Specified: boolean;
    FmaxLength: TXSDecimal;
    FmaxLength_Specified: boolean;
    FmaxWidth: TXSDecimal;
    FmaxWidth_Specified: boolean;
    FmaxHeight: TXSDecimal;
    FmaxHeight_Specified: boolean;
    FdimensionSum: TXSDecimal;
    FdimensionSum_Specified: boolean;
    procedure SetmaxShipmentWeight(Index: Integer; const ATXSDecimal: TXSDecimal);
    function  maxShipmentWeight_Specified(Index: Integer): boolean;
    procedure SetmaxWeight(Index: Integer; const ATXSDecimal: TXSDecimal);
    function  maxWeight_Specified(Index: Integer): boolean;
    procedure SetmaxLength(Index: Integer; const ATXSDecimal: TXSDecimal);
    function  maxLength_Specified(Index: Integer): boolean;
    procedure SetmaxWidth(Index: Integer; const ATXSDecimal: TXSDecimal);
    function  maxWidth_Specified(Index: Integer): boolean;
    procedure SetmaxHeight(Index: Integer; const ATXSDecimal: TXSDecimal);
    function  maxHeight_Specified(Index: Integer): boolean;
    procedure SetdimensionSum(Index: Integer; const ATXSDecimal: TXSDecimal);
    function  dimensionSum_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property maxShipmentWeight: TXSDecimal  Index (IS_OPTN or IS_UNQL) read FmaxShipmentWeight write SetmaxShipmentWeight stored maxShipmentWeight_Specified;
    property maxWeight:         TXSDecimal  Index (IS_OPTN or IS_UNQL) read FmaxWeight write SetmaxWeight stored maxWeight_Specified;
    property maxLength:         TXSDecimal  Index (IS_OPTN or IS_UNQL) read FmaxLength write SetmaxLength stored maxLength_Specified;
    property maxWidth:          TXSDecimal  Index (IS_OPTN or IS_UNQL) read FmaxWidth write SetmaxWidth stored maxWidth_Specified;
    property maxHeight:         TXSDecimal  Index (IS_OPTN or IS_UNQL) read FmaxHeight write SetmaxHeight stored maxHeight_Specified;
    property dimensionSum:      TXSDecimal  Index (IS_OPTN or IS_UNQL) read FdimensionSum write SetdimensionSum stored dimensionSum_Specified;
  end;



  // ************************************************************************ //
  // XML       : parcelShop, global, <complexType>
  // Namespace : http://dpd.ru/ws/geography/2015-05-20
  // ************************************************************************ //
  parcelShop = class(TRemotable)
  private
    Fcode: string;
    Fcode_Specified: boolean;
    FparcelShopType: string;
    FparcelShopType_Specified: boolean;
    Fstate: string;
    Fstate_Specified: boolean;
    Faddress: address;
    Faddress_Specified: boolean;
    Fbrand: string;
    Fbrand_Specified: boolean;
    Fmetro: string;
    Fmetro_Specified: boolean;
    FclientDepartmentNum: string;
    FclientDepartmentNum_Specified: boolean;
    FgeoCoordinates: geoCoordinates;
    FgeoCoordinates_Specified: boolean;
    Flimits: limits;
    Flimits_Specified: boolean;
    Fschedule: Array_Of_schedule;
    Fschedule_Specified: boolean;
    FextraService: Array_Of_extraService;
    FextraService_Specified: boolean;
    Fservices: services2;
    Fservices_Specified: boolean;
    procedure Setcode(Index: Integer; const Astring: string);
    function  code_Specified(Index: Integer): boolean;
    procedure SetparcelShopType(Index: Integer; const Astring: string);
    function  parcelShopType_Specified(Index: Integer): boolean;
    procedure Setstate(Index: Integer; const Astring: string);
    function  state_Specified(Index: Integer): boolean;
    procedure Setaddress(Index: Integer; const Aaddress: address);
    function  address_Specified(Index: Integer): boolean;
    procedure Setbrand(Index: Integer; const Astring: string);
    function  brand_Specified(Index: Integer): boolean;
    procedure Setmetro(Index: Integer; const Astring: string);
    function  metro_Specified(Index: Integer): boolean;
    procedure SetclientDepartmentNum(Index: Integer; const Astring: string);
    function  clientDepartmentNum_Specified(Index: Integer): boolean;
    procedure SetgeoCoordinates(Index: Integer; const AgeoCoordinates: geoCoordinates);
    function  geoCoordinates_Specified(Index: Integer): boolean;
    procedure Setlimits(Index: Integer; const Alimits: limits);
    function  limits_Specified(Index: Integer): boolean;
    procedure Setschedule(Index: Integer; const AArray_Of_schedule: Array_Of_schedule);
    function  schedule_Specified(Index: Integer): boolean;
    procedure SetextraService(Index: Integer; const AArray_Of_extraService: Array_Of_extraService);
    function  extraService_Specified(Index: Integer): boolean;
    procedure Setservices(Index: Integer; const Aservices2: services2);
    function  services_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property code:                string                 Index (IS_OPTN or IS_UNQL) read Fcode write Setcode stored code_Specified;
    property parcelShopType:      string                 Index (IS_OPTN or IS_UNQL) read FparcelShopType write SetparcelShopType stored parcelShopType_Specified;
    property state:               string                 Index (IS_OPTN or IS_UNQL) read Fstate write Setstate stored state_Specified;
    property address:             address                Index (IS_OPTN or IS_UNQL) read Faddress write Setaddress stored address_Specified;
    property brand:               string                 Index (IS_OPTN or IS_UNQL) read Fbrand write Setbrand stored brand_Specified;
    property metro:               string                 Index (IS_OPTN or IS_UNQL) read Fmetro write Setmetro stored metro_Specified;
    property clientDepartmentNum: string                 Index (IS_OPTN or IS_UNQL) read FclientDepartmentNum write SetclientDepartmentNum stored clientDepartmentNum_Specified;
    property geoCoordinates:      geoCoordinates         Index (IS_OPTN or IS_UNQL) read FgeoCoordinates write SetgeoCoordinates stored geoCoordinates_Specified;
    property limits:              limits                 Index (IS_OPTN or IS_UNQL) read Flimits write Setlimits stored limits_Specified;
    property schedule:            Array_Of_schedule      Index (IS_OPTN or IS_UNBD or IS_UNQL) read Fschedule write Setschedule stored schedule_Specified;
    property extraService:        Array_Of_extraService  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FextraService write SetextraService stored extraService_Specified;
    property services:            services2              Index (IS_OPTN or IS_UNQL) read Fservices write Setservices stored services_Specified;
  end;



  // ************************************************************************ //
  // XML       : dpdPossibleESResult, global, <complexType>
  // Namespace : http://dpd.ru/ws/geography/2015-05-20
  // ************************************************************************ //
  dpdPossibleESResult = class(TRemotable)
  private
    FresultCode: string;
    FresultCode_Specified: boolean;
    FresultMessage: string;
    FresultMessage_Specified: boolean;
    FextraService: Array_Of_possibleExtraService;
    FextraService_Specified: boolean;
    procedure SetresultCode(Index: Integer; const Astring: string);
    function  resultCode_Specified(Index: Integer): boolean;
    procedure SetresultMessage(Index: Integer; const Astring: string);
    function  resultMessage_Specified(Index: Integer): boolean;
    procedure SetextraService(Index: Integer; const AArray_Of_possibleExtraService: Array_Of_possibleExtraService);
    function  extraService_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property resultCode:    string                         Index (IS_OPTN or IS_UNQL) read FresultCode write SetresultCode stored resultCode_Specified;
    property resultMessage: string                         Index (IS_OPTN or IS_UNQL) read FresultMessage write SetresultMessage stored resultMessage_Specified;
    property extraService:  Array_Of_possibleExtraService  Index (IS_OPTN or IS_UNBD or IS_UNQL) read FextraService write SetextraService stored extraService_Specified;
  end;



  // ************************************************************************ //
  // XML       : dpdPossibleESPickupDelivery, global, <complexType>
  // Namespace : http://dpd.ru/ws/geography/2015-05-20
  // ************************************************************************ //
  dpdPossibleESPickupDelivery = class(TRemotable)
  private
    FcityId: TXSDecimal;
    FcityId_Specified: boolean;
    FterminalCode: string;
    FterminalCode_Specified: boolean;
    Findex_: TXSDecimal;
    Findex__Specified: boolean;
    FcityName: string;
    FcityName_Specified: boolean;
    FregionCode: string;
    FregionCode_Specified: boolean;
    FcountryCode: string;
    FcountryCode_Specified: boolean;
    procedure SetcityId(Index: Integer; const ATXSDecimal: TXSDecimal);
    function  cityId_Specified(Index: Integer): boolean;
    procedure SetterminalCode(Index: Integer; const Astring: string);
    function  terminalCode_Specified(Index: Integer): boolean;
    procedure Setindex_(Index: Integer; const ATXSDecimal: TXSDecimal);
    function  index__Specified(Index: Integer): boolean;
    procedure SetcityName(Index: Integer; const Astring: string);
    function  cityName_Specified(Index: Integer): boolean;
    procedure SetregionCode(Index: Integer; const Astring: string);
    function  regionCode_Specified(Index: Integer): boolean;
    procedure SetcountryCode(Index: Integer; const Astring: string);
    function  countryCode_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property cityId:       TXSDecimal  Index (IS_OPTN or IS_UNQL) read FcityId write SetcityId stored cityId_Specified;
    property terminalCode: string      Index (IS_OPTN or IS_UNQL) read FterminalCode write SetterminalCode stored terminalCode_Specified;
    property index_:       TXSDecimal  Index (IS_OPTN or IS_UNQL) read Findex_ write Setindex_ stored index__Specified;
    property cityName:     string      Index (IS_OPTN or IS_UNQL) read FcityName write SetcityName stored cityName_Specified;
    property regionCode:   string      Index (IS_OPTN or IS_UNQL) read FregionCode write SetregionCode stored regionCode_Specified;
    property countryCode:  string      Index (IS_OPTN or IS_UNQL) read FcountryCode write SetcountryCode stored countryCode_Specified;
  end;



  // ************************************************************************ //
  // XML       : WSFault, global, <complexType>
  // Namespace : http://dpd.ru/ws/geography/2015-05-20
  // ************************************************************************ //
  WSFault2 = class(TRemotable)
  private
    Fcode: string;
    Fcode_Specified: boolean;
    Fmessage_: string;
    Fmessage__Specified: boolean;
    procedure Setcode(Index: Integer; const Astring: string);
    function  code_Specified(Index: Integer): boolean;
    procedure Setmessage_(Index: Integer; const Astring: string);
    function  message__Specified(Index: Integer): boolean;
  published
    property code:     string  Index (IS_OPTN or IS_UNQL) read Fcode write Setcode stored code_Specified;
    property message_: string  Index (IS_OPTN or IS_UNQL) read Fmessage_ write Setmessage_ stored message__Specified;
  end;

  dpdPossibleESOption = array of string;        { "http://dpd.ru/ws/geography/2015-05-20"[GblCplx] }


  // ************************************************************************ //
  // XML       : dpdPossibleESRequest, global, <complexType>
  // Namespace : http://dpd.ru/ws/geography/2015-05-20
  // ************************************************************************ //
  dpdPossibleESRequest = class(TRemotable)
  private
    Fauth: auth;
    Fpickup: dpdPossibleESPickupDelivery;
    Fpickup_Specified: boolean;
    Fdelivery: dpdPossibleESPickupDelivery;
    Fdelivery_Specified: boolean;
    FselfPickup: Boolean;
    FselfDelivery: Boolean;
    FserviceCode: string;
    FpickupDate: TXSDate;
    FpickupDate_Specified: boolean;
    Foptions: dpdPossibleESOption;
    Foptions_Specified: boolean;
    procedure Setpickup(Index: Integer; const AdpdPossibleESPickupDelivery: dpdPossibleESPickupDelivery);
    function  pickup_Specified(Index: Integer): boolean;
    procedure Setdelivery(Index: Integer; const AdpdPossibleESPickupDelivery: dpdPossibleESPickupDelivery);
    function  delivery_Specified(Index: Integer): boolean;
    procedure SetpickupDate(Index: Integer; const ATXSDate: TXSDate);
    function  pickupDate_Specified(Index: Integer): boolean;
    procedure Setoptions(Index: Integer; const AdpdPossibleESOption: dpdPossibleESOption);
    function  options_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property auth:         auth                         Index (IS_UNQL) read Fauth write Fauth;
    property pickup:       dpdPossibleESPickupDelivery  Index (IS_OPTN or IS_UNQL) read Fpickup write Setpickup stored pickup_Specified;
    property delivery:     dpdPossibleESPickupDelivery  Index (IS_OPTN or IS_UNQL) read Fdelivery write Setdelivery stored delivery_Specified;
    property selfPickup:   Boolean                      Index (IS_UNQL) read FselfPickup write FselfPickup;
    property selfDelivery: Boolean                      Index (IS_UNQL) read FselfDelivery write FselfDelivery;
    property serviceCode:  string                       Index (IS_UNQL) read FserviceCode write FserviceCode;
    property pickupDate:   TXSDate                      Index (IS_OPTN or IS_UNQL) read FpickupDate write SetpickupDate stored pickupDate_Specified;
    property options:      dpdPossibleESOption          Index (IS_OPTN or IS_UNQL) read Foptions write Setoptions stored options_Specified;
  end;



  // ************************************************************************ //
  // XML       : possibleExtraService, global, <complexType>
  // Namespace : http://dpd.ru/ws/geography/2015-05-20
  // ************************************************************************ //
  possibleExtraService = class(TRemotable)
  private
    Fcode: string;
    Fcode_Specified: boolean;
    Fname_: string;
    Fname__Specified: boolean;
    FisPaid: Boolean;
    procedure Setcode(Index: Integer; const Astring: string);
    function  code_Specified(Index: Integer): boolean;
    procedure Setname_(Index: Integer; const Astring: string);
    function  name__Specified(Index: Integer): boolean;
  published
    property code:   string   Index (IS_OPTN or IS_UNQL) read Fcode write Setcode stored code_Specified;
    property name_:  string   Index (IS_OPTN or IS_UNQL) read Fname_ write Setname_ stored name__Specified;
    property isPaid: Boolean  Index (IS_UNQL) read FisPaid write FisPaid;
  end;


  // ************************************************************************ //
  // Namespace : http://dpd.ru/ws/geography/2015-05-20
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : document
  // use       : literal
  // binding   : DPDGeography2PortBinding
  // service   : DPDGeography2Service
  // port      : DPDGeography2Port
  // URL       : http://wstest.dpd.ru/services/geography2
  // ************************************************************************ //
  DPDGeography2 = interface(IInvokable)
  ['{3E884B22-393E-ABDE-432F-2877315E825C}']
    function  getStoragePeriod(const request: storagePeriodRequest): dpdTerminals; stdcall;
    function  getCitiesCashPay(const request: dpdCitiesCashPayRequest): getCitiesCashPayResponse; stdcall;
    function  getTerminalsSelfDelivery2(const auth: auth): selfTerminals; stdcall;
    function  getPossibleExtraService(const request: dpdPossibleESRequest): dpdPossibleESResult; stdcall;
    function  getParcelShops(const request: dpdParcelShopRequest): dpdParcelShops; stdcall;
  end;

function GetDPDGeography2(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): DPDGeography2;


implementation
  uses System.SysUtils;

function GetDPDGeography2(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): DPDGeography2;
const
  defWSDL = 'https://wstest.dpd.ru/services/geography2?wsdl';
  defURL  = 'http://wstest.dpd.ru/services/geography2';
  defSvc  = 'DPDGeography2Service';
  defPrt  = 'DPDGeography2Port';
var
  RIO: THTTPRIO;
begin
  Result := nil;
  if (Addr = '') then
  begin
    if UseWSDL then
      Addr := defWSDL
    else
      Addr := defURL;
  end;
  if HTTPRIO = nil then
    RIO := THTTPRIO.Create(nil)
  else
    RIO := HTTPRIO;
  try
    Result := (RIO as DPDGeography2);
    if UseWSDL then
    begin
      RIO.WSDLLocation := Addr;
      RIO.Service := defSvc;
      RIO.Port := defPrt;
    end else
      RIO.URL := Addr;
  finally
    if (Result = nil) and (HTTPRIO = nil) then
      RIO.Free;
  end;
end;


destructor geoCoordinates.Destroy;
begin
  System.SysUtils.FreeAndNil(Flatitude);
  System.SysUtils.FreeAndNil(Flongitude);
  inherited Destroy;
end;

procedure geoCoordinates.Setlatitude(Index: Integer; const ATXSDecimal: TXSDecimal);
begin
  Flatitude := ATXSDecimal;
  Flatitude_Specified := True;
end;

function geoCoordinates.latitude_Specified(Index: Integer): boolean;
begin
  Result := Flatitude_Specified;
end;

procedure geoCoordinates.Setlongitude(Index: Integer; const ATXSDecimal: TXSDecimal);
begin
  Flongitude := ATXSDecimal;
  Flongitude_Specified := True;
end;

function geoCoordinates.longitude_Specified(Index: Integer): boolean;
begin
  Result := Flongitude_Specified;
end;

procedure timetable.SetweekDays(Index: Integer; const Astring: string);
begin
  FweekDays := Astring;
  FweekDays_Specified := True;
end;

function timetable.weekDays_Specified(Index: Integer): boolean;
begin
  Result := FweekDays_Specified;
end;

procedure timetable.SetworkTime(Index: Integer; const Astring: string);
begin
  FworkTime := Astring;
  FworkTime_Specified := True;
end;

function timetable.workTime_Specified(Index: Integer): boolean;
begin
  Result := FworkTime_Specified;
end;

procedure extraServiceParam.Setname_(Index: Integer; const Astring: string);
begin
  Fname_ := Astring;
  Fname__Specified := True;
end;

function extraServiceParam.name__Specified(Index: Integer): boolean;
begin
  Result := Fname__Specified;
end;

procedure extraServiceParam.Setvalue(Index: Integer; const Astring: string);
begin
  Fvalue := Astring;
  Fvalue_Specified := True;
end;

function extraServiceParam.value_Specified(Index: Integer): boolean;
begin
  Result := Fvalue_Specified;
end;

destructor schedule.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(Ftimetable)-1 do
    System.SysUtils.FreeAndNil(Ftimetable[I]);
  System.SetLength(Ftimetable, 0);
  inherited Destroy;
end;

procedure schedule.Setoperation(Index: Integer; const Astring: string);
begin
  Foperation := Astring;
  Foperation_Specified := True;
end;

function schedule.operation_Specified(Index: Integer): boolean;
begin
  Result := Foperation_Specified;
end;

procedure schedule.Settimetable(Index: Integer; const AArray_Of_timetable: Array_Of_timetable);
begin
  Ftimetable := AArray_Of_timetable;
  Ftimetable_Specified := True;
end;

function schedule.timetable_Specified(Index: Integer): boolean;
begin
  Result := Ftimetable_Specified;
end;

destructor extraService.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(Fparams)-1 do
    System.SysUtils.FreeAndNil(Fparams[I]);
  System.SetLength(Fparams, 0);
  inherited Destroy;
end;

procedure extraService.SetesCode(Index: Integer; const Astring: string);
begin
  FesCode := Astring;
  FesCode_Specified := True;
end;

function extraService.esCode_Specified(Index: Integer): boolean;
begin
  Result := FesCode_Specified;
end;

procedure extraService.Setparams(Index: Integer; const AArray_Of_extraServiceParam: Array_Of_extraServiceParam);
begin
  Fparams := AArray_Of_extraServiceParam;
  Fparams_Specified := True;
end;

function extraService.params_Specified(Index: Integer): boolean;
begin
  Result := Fparams_Specified;
end;

destructor dpdCitiesCashPayRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fauth);
  inherited Destroy;
end;

procedure dpdCitiesCashPayRequest.SetcountryCode(Index: Integer; const Astring: string);
begin
  FcountryCode := Astring;
  FcountryCode_Specified := True;
end;

function dpdCitiesCashPayRequest.countryCode_Specified(Index: Integer): boolean;
begin
  Result := FcountryCode_Specified;
end;

destructor terminalStoragePeriods.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(Fservices)-1 do
    System.SysUtils.FreeAndNil(Fservices[I]);
  System.SetLength(Fservices, 0);
  inherited Destroy;
end;

procedure terminalStoragePeriods.SetterminalCode(Index: Integer; const Astring: string);
begin
  FterminalCode := Astring;
  FterminalCode_Specified := True;
end;

function terminalStoragePeriods.terminalCode_Specified(Index: Integer): boolean;
begin
  Result := FterminalCode_Specified;
end;

procedure terminalStoragePeriods.Setservices(Index: Integer; const AArray_Of_storagePeriod: Array_Of_storagePeriod);
begin
  Fservices := AArray_Of_storagePeriod;
  Fservices_Specified := True;
end;

function terminalStoragePeriods.services_Specified(Index: Integer): boolean;
begin
  Result := Fservices_Specified;
end;

procedure storagePeriod.SetserviceCode(Index: Integer; const Astring: string);
begin
  FserviceCode := Astring;
  FserviceCode_Specified := True;
end;

function storagePeriod.serviceCode_Specified(Index: Integer): boolean;
begin
  Result := FserviceCode_Specified;
end;

procedure WSFault.Setcode(Index: Integer; const Astring: string);
begin
  Fcode := Astring;
  Fcode_Specified := True;
end;

function WSFault.code_Specified(Index: Integer): boolean;
begin
  Result := Fcode_Specified;
end;

procedure WSFault.Setmessage_(Index: Integer; const Astring: string);
begin
  Fmessage_ := Astring;
  Fmessage__Specified := True;
end;

function WSFault.message__Specified(Index: Integer): boolean;
begin
  Result := Fmessage__Specified;
end;

destructor storagePeriodRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fauth);
  inherited Destroy;
end;

procedure storagePeriodRequest.SetserviceCode(Index: Integer; const Astring: string);
begin
  FserviceCode := Astring;
  FserviceCode_Specified := True;
end;

function storagePeriodRequest.serviceCode_Specified(Index: Integer): boolean;
begin
  Result := FserviceCode_Specified;
end;

procedure city.SetcityId(Index: Integer; const AInt64: Int64);
begin
  FcityId := AInt64;
  FcityId_Specified := True;
end;

function city.cityId_Specified(Index: Integer): boolean;
begin
  Result := FcityId_Specified;
end;

procedure city.SetcountryCode(Index: Integer; const Astring: string);
begin
  FcountryCode := Astring;
  FcountryCode_Specified := True;
end;

function city.countryCode_Specified(Index: Integer): boolean;
begin
  Result := FcountryCode_Specified;
end;

procedure city.SetcountryName(Index: Integer; const Astring: string);
begin
  FcountryName := Astring;
  FcountryName_Specified := True;
end;

function city.countryName_Specified(Index: Integer): boolean;
begin
  Result := FcountryName_Specified;
end;

procedure city.SetregionCode(Index: Integer; const AInteger: Integer);
begin
  FregionCode := AInteger;
  FregionCode_Specified := True;
end;

function city.regionCode_Specified(Index: Integer): boolean;
begin
  Result := FregionCode_Specified;
end;

procedure city.SetregionName(Index: Integer; const Astring: string);
begin
  FregionName := Astring;
  FregionName_Specified := True;
end;

function city.regionName_Specified(Index: Integer): boolean;
begin
  Result := FregionName_Specified;
end;

procedure city.SetcityCode(Index: Integer; const Astring: string);
begin
  FcityCode := Astring;
  FcityCode_Specified := True;
end;

function city.cityCode_Specified(Index: Integer): boolean;
begin
  Result := FcityCode_Specified;
end;

procedure city.SetcityName(Index: Integer; const Astring: string);
begin
  FcityName := Astring;
  FcityName_Specified := True;
end;

function city.cityName_Specified(Index: Integer): boolean;
begin
  Result := FcityName_Specified;
end;

procedure city.Setabbreviation(Index: Integer; const Astring: string);
begin
  Fabbreviation := Astring;
  Fabbreviation_Specified := True;
end;

function city.abbreviation_Specified(Index: Integer): boolean;
begin
  Result := Fabbreviation_Specified;
end;

procedure city.SetindexMin(Index: Integer; const Astring: string);
begin
  FindexMin := Astring;
  FindexMin_Specified := True;
end;

function city.indexMin_Specified(Index: Integer): boolean;
begin
  Result := FindexMin_Specified;
end;

procedure city.SetindexMax(Index: Integer; const Astring: string);
begin
  FindexMax := Astring;
  FindexMax_Specified := True;
end;

function city.indexMax_Specified(Index: Integer): boolean;
begin
  Result := FindexMax_Specified;
end;

procedure address.SetcityId(Index: Integer; const AInt64: Int64);
begin
  FcityId := AInt64;
  FcityId_Specified := True;
end;

function address.cityId_Specified(Index: Integer): boolean;
begin
  Result := FcityId_Specified;
end;

procedure address.SetcountryCode(Index: Integer; const Astring: string);
begin
  FcountryCode := Astring;
  FcountryCode_Specified := True;
end;

function address.countryCode_Specified(Index: Integer): boolean;
begin
  Result := FcountryCode_Specified;
end;

procedure address.SetregionCode(Index: Integer; const Astring: string);
begin
  FregionCode := Astring;
  FregionCode_Specified := True;
end;

function address.regionCode_Specified(Index: Integer): boolean;
begin
  Result := FregionCode_Specified;
end;

procedure address.SetregionName(Index: Integer; const Astring: string);
begin
  FregionName := Astring;
  FregionName_Specified := True;
end;

function address.regionName_Specified(Index: Integer): boolean;
begin
  Result := FregionName_Specified;
end;

procedure address.SetcityCode(Index: Integer; const Astring: string);
begin
  FcityCode := Astring;
  FcityCode_Specified := True;
end;

function address.cityCode_Specified(Index: Integer): boolean;
begin
  Result := FcityCode_Specified;
end;

procedure address.SetcityName(Index: Integer; const Astring: string);
begin
  FcityName := Astring;
  FcityName_Specified := True;
end;

function address.cityName_Specified(Index: Integer): boolean;
begin
  Result := FcityName_Specified;
end;

procedure address.Setindex_(Index: Integer; const Astring: string);
begin
  Findex_ := Astring;
  Findex__Specified := True;
end;

function address.index__Specified(Index: Integer): boolean;
begin
  Result := Findex__Specified;
end;

procedure address.Setstreet(Index: Integer; const Astring: string);
begin
  Fstreet := Astring;
  Fstreet_Specified := True;
end;

function address.street_Specified(Index: Integer): boolean;
begin
  Result := Fstreet_Specified;
end;

procedure address.SetstreetAbbr(Index: Integer; const Astring: string);
begin
  FstreetAbbr := Astring;
  FstreetAbbr_Specified := True;
end;

function address.streetAbbr_Specified(Index: Integer): boolean;
begin
  Result := FstreetAbbr_Specified;
end;

procedure address.SethouseNo(Index: Integer; const Astring: string);
begin
  FhouseNo := Astring;
  FhouseNo_Specified := True;
end;

function address.houseNo_Specified(Index: Integer): boolean;
begin
  Result := FhouseNo_Specified;
end;

procedure address.Setbuilding(Index: Integer; const Astring: string);
begin
  Fbuilding := Astring;
  Fbuilding_Specified := True;
end;

function address.building_Specified(Index: Integer): boolean;
begin
  Result := Fbuilding_Specified;
end;

procedure address.Setstructure(Index: Integer; const Astring: string);
begin
  Fstructure := Astring;
  Fstructure_Specified := True;
end;

function address.structure_Specified(Index: Integer): boolean;
begin
  Result := Fstructure_Specified;
end;

procedure address.Setownership(Index: Integer; const Astring: string);
begin
  Fownership := Astring;
  Fownership_Specified := True;
end;

function address.ownership_Specified(Index: Integer): boolean;
begin
  Result := Fownership_Specified;
end;

procedure address.Setdescript(Index: Integer; const Astring: string);
begin
  Fdescript := Astring;
  Fdescript_Specified := True;
end;

function address.descript_Specified(Index: Integer): boolean;
begin
  Result := Fdescript_Specified;
end;

destructor terminalSelf.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(Fschedule)-1 do
    System.SysUtils.FreeAndNil(Fschedule[I]);
  System.SetLength(Fschedule, 0);
  for I := 0 to System.Length(FextraService)-1 do
    System.SysUtils.FreeAndNil(FextraService[I]);
  System.SetLength(FextraService, 0);
  System.SysUtils.FreeAndNil(Faddress);
  System.SysUtils.FreeAndNil(FgeoCoordinates);
  inherited Destroy;
end;

procedure terminalSelf.SetterminalCode(Index: Integer; const Astring: string);
begin
  FterminalCode := Astring;
  FterminalCode_Specified := True;
end;

function terminalSelf.terminalCode_Specified(Index: Integer): boolean;
begin
  Result := FterminalCode_Specified;
end;

procedure terminalSelf.SetterminalName(Index: Integer; const Astring: string);
begin
  FterminalName := Astring;
  FterminalName_Specified := True;
end;

function terminalSelf.terminalName_Specified(Index: Integer): boolean;
begin
  Result := FterminalName_Specified;
end;

procedure terminalSelf.Setaddress(Index: Integer; const Aaddress: address);
begin
  Faddress := Aaddress;
  Faddress_Specified := True;
end;

function terminalSelf.address_Specified(Index: Integer): boolean;
begin
  Result := Faddress_Specified;
end;

procedure terminalSelf.SetgeoCoordinates(Index: Integer; const AgeoCoordinates: geoCoordinates);
begin
  FgeoCoordinates := AgeoCoordinates;
  FgeoCoordinates_Specified := True;
end;

function terminalSelf.geoCoordinates_Specified(Index: Integer): boolean;
begin
  Result := FgeoCoordinates_Specified;
end;

procedure terminalSelf.Setschedule(Index: Integer; const AArray_Of_schedule: Array_Of_schedule);
begin
  Fschedule := AArray_Of_schedule;
  Fschedule_Specified := True;
end;

function terminalSelf.schedule_Specified(Index: Integer): boolean;
begin
  Result := Fschedule_Specified;
end;

procedure terminalSelf.SetextraService(Index: Integer; const AArray_Of_extraService: Array_Of_extraService);
begin
  FextraService := AArray_Of_extraService;
  FextraService_Specified := True;
end;

function terminalSelf.extraService_Specified(Index: Integer): boolean;
begin
  Result := FextraService_Specified;
end;

procedure terminalSelf.Setservices(Index: Integer; const Aservices: services);
begin
  Fservices := Aservices;
  Fservices_Specified := True;
end;

function terminalSelf.services_Specified(Index: Integer): boolean;
begin
  Result := Fservices_Specified;
end;

destructor dpdParcelShopRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fauth);
  inherited Destroy;
end;

procedure dpdParcelShopRequest.SetcountryCode(Index: Integer; const Astring: string);
begin
  FcountryCode := Astring;
  FcountryCode_Specified := True;
end;

function dpdParcelShopRequest.countryCode_Specified(Index: Integer): boolean;
begin
  Result := FcountryCode_Specified;
end;

procedure dpdParcelShopRequest.SetregionCode(Index: Integer; const Astring: string);
begin
  FregionCode := Astring;
  FregionCode_Specified := True;
end;

function dpdParcelShopRequest.regionCode_Specified(Index: Integer): boolean;
begin
  Result := FregionCode_Specified;
end;

procedure dpdParcelShopRequest.SetcityCode(Index: Integer; const Astring: string);
begin
  FcityCode := Astring;
  FcityCode_Specified := True;
end;

function dpdParcelShopRequest.cityCode_Specified(Index: Integer): boolean;
begin
  Result := FcityCode_Specified;
end;

procedure dpdParcelShopRequest.SetcityName(Index: Integer; const Astring: string);
begin
  FcityName := Astring;
  FcityName_Specified := True;
end;

function dpdParcelShopRequest.cityName_Specified(Index: Integer): boolean;
begin
  Result := FcityName_Specified;
end;

destructor limits.Destroy;
begin
  System.SysUtils.FreeAndNil(FmaxShipmentWeight);
  System.SysUtils.FreeAndNil(FmaxWeight);
  System.SysUtils.FreeAndNil(FmaxLength);
  System.SysUtils.FreeAndNil(FmaxWidth);
  System.SysUtils.FreeAndNil(FmaxHeight);
  System.SysUtils.FreeAndNil(FdimensionSum);
  inherited Destroy;
end;

procedure limits.SetmaxShipmentWeight(Index: Integer; const ATXSDecimal: TXSDecimal);
begin
  FmaxShipmentWeight := ATXSDecimal;
  FmaxShipmentWeight_Specified := True;
end;

function limits.maxShipmentWeight_Specified(Index: Integer): boolean;
begin
  Result := FmaxShipmentWeight_Specified;
end;

procedure limits.SetmaxWeight(Index: Integer; const ATXSDecimal: TXSDecimal);
begin
  FmaxWeight := ATXSDecimal;
  FmaxWeight_Specified := True;
end;

function limits.maxWeight_Specified(Index: Integer): boolean;
begin
  Result := FmaxWeight_Specified;
end;

procedure limits.SetmaxLength(Index: Integer; const ATXSDecimal: TXSDecimal);
begin
  FmaxLength := ATXSDecimal;
  FmaxLength_Specified := True;
end;

function limits.maxLength_Specified(Index: Integer): boolean;
begin
  Result := FmaxLength_Specified;
end;

procedure limits.SetmaxWidth(Index: Integer; const ATXSDecimal: TXSDecimal);
begin
  FmaxWidth := ATXSDecimal;
  FmaxWidth_Specified := True;
end;

function limits.maxWidth_Specified(Index: Integer): boolean;
begin
  Result := FmaxWidth_Specified;
end;

procedure limits.SetmaxHeight(Index: Integer; const ATXSDecimal: TXSDecimal);
begin
  FmaxHeight := ATXSDecimal;
  FmaxHeight_Specified := True;
end;

function limits.maxHeight_Specified(Index: Integer): boolean;
begin
  Result := FmaxHeight_Specified;
end;

procedure limits.SetdimensionSum(Index: Integer; const ATXSDecimal: TXSDecimal);
begin
  FdimensionSum := ATXSDecimal;
  FdimensionSum_Specified := True;
end;

function limits.dimensionSum_Specified(Index: Integer): boolean;
begin
  Result := FdimensionSum_Specified;
end;

destructor parcelShop.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(Fschedule)-1 do
    System.SysUtils.FreeAndNil(Fschedule[I]);
  System.SetLength(Fschedule, 0);
  for I := 0 to System.Length(FextraService)-1 do
    System.SysUtils.FreeAndNil(FextraService[I]);
  System.SetLength(FextraService, 0);
  System.SysUtils.FreeAndNil(Faddress);
  System.SysUtils.FreeAndNil(FgeoCoordinates);
  System.SysUtils.FreeAndNil(Flimits);
  inherited Destroy;
end;

procedure parcelShop.Setcode(Index: Integer; const Astring: string);
begin
  Fcode := Astring;
  Fcode_Specified := True;
end;

function parcelShop.code_Specified(Index: Integer): boolean;
begin
  Result := Fcode_Specified;
end;

procedure parcelShop.SetparcelShopType(Index: Integer; const Astring: string);
begin
  FparcelShopType := Astring;
  FparcelShopType_Specified := True;
end;

function parcelShop.parcelShopType_Specified(Index: Integer): boolean;
begin
  Result := FparcelShopType_Specified;
end;

procedure parcelShop.Setstate(Index: Integer; const Astring: string);
begin
  Fstate := Astring;
  Fstate_Specified := True;
end;

function parcelShop.state_Specified(Index: Integer): boolean;
begin
  Result := Fstate_Specified;
end;

procedure parcelShop.Setaddress(Index: Integer; const Aaddress: address);
begin
  Faddress := Aaddress;
  Faddress_Specified := True;
end;

function parcelShop.address_Specified(Index: Integer): boolean;
begin
  Result := Faddress_Specified;
end;

procedure parcelShop.Setbrand(Index: Integer; const Astring: string);
begin
  Fbrand := Astring;
  Fbrand_Specified := True;
end;

function parcelShop.brand_Specified(Index: Integer): boolean;
begin
  Result := Fbrand_Specified;
end;

procedure parcelShop.Setmetro(Index: Integer; const Astring: string);
begin
  Fmetro := Astring;
  Fmetro_Specified := True;
end;

function parcelShop.metro_Specified(Index: Integer): boolean;
begin
  Result := Fmetro_Specified;
end;

procedure parcelShop.SetclientDepartmentNum(Index: Integer; const Astring: string);
begin
  FclientDepartmentNum := Astring;
  FclientDepartmentNum_Specified := True;
end;

function parcelShop.clientDepartmentNum_Specified(Index: Integer): boolean;
begin
  Result := FclientDepartmentNum_Specified;
end;

procedure parcelShop.SetgeoCoordinates(Index: Integer; const AgeoCoordinates: geoCoordinates);
begin
  FgeoCoordinates := AgeoCoordinates;
  FgeoCoordinates_Specified := True;
end;

function parcelShop.geoCoordinates_Specified(Index: Integer): boolean;
begin
  Result := FgeoCoordinates_Specified;
end;

procedure parcelShop.Setlimits(Index: Integer; const Alimits: limits);
begin
  Flimits := Alimits;
  Flimits_Specified := True;
end;

function parcelShop.limits_Specified(Index: Integer): boolean;
begin
  Result := Flimits_Specified;
end;

procedure parcelShop.Setschedule(Index: Integer; const AArray_Of_schedule: Array_Of_schedule);
begin
  Fschedule := AArray_Of_schedule;
  Fschedule_Specified := True;
end;

function parcelShop.schedule_Specified(Index: Integer): boolean;
begin
  Result := Fschedule_Specified;
end;

procedure parcelShop.SetextraService(Index: Integer; const AArray_Of_extraService: Array_Of_extraService);
begin
  FextraService := AArray_Of_extraService;
  FextraService_Specified := True;
end;

function parcelShop.extraService_Specified(Index: Integer): boolean;
begin
  Result := FextraService_Specified;
end;

procedure parcelShop.Setservices(Index: Integer; const Aservices2: services2);
begin
  Fservices := Aservices2;
  Fservices_Specified := True;
end;

function parcelShop.services_Specified(Index: Integer): boolean;
begin
  Result := Fservices_Specified;
end;

destructor dpdPossibleESResult.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FextraService)-1 do
    System.SysUtils.FreeAndNil(FextraService[I]);
  System.SetLength(FextraService, 0);
  inherited Destroy;
end;

procedure dpdPossibleESResult.SetresultCode(Index: Integer; const Astring: string);
begin
  FresultCode := Astring;
  FresultCode_Specified := True;
end;

function dpdPossibleESResult.resultCode_Specified(Index: Integer): boolean;
begin
  Result := FresultCode_Specified;
end;

procedure dpdPossibleESResult.SetresultMessage(Index: Integer; const Astring: string);
begin
  FresultMessage := Astring;
  FresultMessage_Specified := True;
end;

function dpdPossibleESResult.resultMessage_Specified(Index: Integer): boolean;
begin
  Result := FresultMessage_Specified;
end;

procedure dpdPossibleESResult.SetextraService(Index: Integer; const AArray_Of_possibleExtraService: Array_Of_possibleExtraService);
begin
  FextraService := AArray_Of_possibleExtraService;
  FextraService_Specified := True;
end;

function dpdPossibleESResult.extraService_Specified(Index: Integer): boolean;
begin
  Result := FextraService_Specified;
end;

destructor dpdPossibleESPickupDelivery.Destroy;
begin
  System.SysUtils.FreeAndNil(FcityId);
  System.SysUtils.FreeAndNil(Findex_);
  inherited Destroy;
end;

procedure dpdPossibleESPickupDelivery.SetcityId(Index: Integer; const ATXSDecimal: TXSDecimal);
begin
  FcityId := ATXSDecimal;
  FcityId_Specified := True;
end;

function dpdPossibleESPickupDelivery.cityId_Specified(Index: Integer): boolean;
begin
  Result := FcityId_Specified;
end;

procedure dpdPossibleESPickupDelivery.SetterminalCode(Index: Integer; const Astring: string);
begin
  FterminalCode := Astring;
  FterminalCode_Specified := True;
end;

function dpdPossibleESPickupDelivery.terminalCode_Specified(Index: Integer): boolean;
begin
  Result := FterminalCode_Specified;
end;

procedure dpdPossibleESPickupDelivery.Setindex_(Index: Integer; const ATXSDecimal: TXSDecimal);
begin
  Findex_ := ATXSDecimal;
  Findex__Specified := True;
end;

function dpdPossibleESPickupDelivery.index__Specified(Index: Integer): boolean;
begin
  Result := Findex__Specified;
end;

procedure dpdPossibleESPickupDelivery.SetcityName(Index: Integer; const Astring: string);
begin
  FcityName := Astring;
  FcityName_Specified := True;
end;

function dpdPossibleESPickupDelivery.cityName_Specified(Index: Integer): boolean;
begin
  Result := FcityName_Specified;
end;

procedure dpdPossibleESPickupDelivery.SetregionCode(Index: Integer; const Astring: string);
begin
  FregionCode := Astring;
  FregionCode_Specified := True;
end;

function dpdPossibleESPickupDelivery.regionCode_Specified(Index: Integer): boolean;
begin
  Result := FregionCode_Specified;
end;

procedure dpdPossibleESPickupDelivery.SetcountryCode(Index: Integer; const Astring: string);
begin
  FcountryCode := Astring;
  FcountryCode_Specified := True;
end;

function dpdPossibleESPickupDelivery.countryCode_Specified(Index: Integer): boolean;
begin
  Result := FcountryCode_Specified;
end;

procedure WSFault2.Setcode(Index: Integer; const Astring: string);
begin
  Fcode := Astring;
  Fcode_Specified := True;
end;

function WSFault2.code_Specified(Index: Integer): boolean;
begin
  Result := Fcode_Specified;
end;

procedure WSFault2.Setmessage_(Index: Integer; const Astring: string);
begin
  Fmessage_ := Astring;
  Fmessage__Specified := True;
end;

function WSFault2.message__Specified(Index: Integer): boolean;
begin
  Result := Fmessage__Specified;
end;

destructor dpdPossibleESRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fauth);
  System.SysUtils.FreeAndNil(Fpickup);
  System.SysUtils.FreeAndNil(Fdelivery);
  System.SysUtils.FreeAndNil(FpickupDate);
  inherited Destroy;
end;

procedure dpdPossibleESRequest.Setpickup(Index: Integer; const AdpdPossibleESPickupDelivery: dpdPossibleESPickupDelivery);
begin
  Fpickup := AdpdPossibleESPickupDelivery;
  Fpickup_Specified := True;
end;

function dpdPossibleESRequest.pickup_Specified(Index: Integer): boolean;
begin
  Result := Fpickup_Specified;
end;

procedure dpdPossibleESRequest.Setdelivery(Index: Integer; const AdpdPossibleESPickupDelivery: dpdPossibleESPickupDelivery);
begin
  Fdelivery := AdpdPossibleESPickupDelivery;
  Fdelivery_Specified := True;
end;

function dpdPossibleESRequest.delivery_Specified(Index: Integer): boolean;
begin
  Result := Fdelivery_Specified;
end;

procedure dpdPossibleESRequest.SetpickupDate(Index: Integer; const ATXSDate: TXSDate);
begin
  FpickupDate := ATXSDate;
  FpickupDate_Specified := True;
end;

function dpdPossibleESRequest.pickupDate_Specified(Index: Integer): boolean;
begin
  Result := FpickupDate_Specified;
end;

procedure dpdPossibleESRequest.Setoptions(Index: Integer; const AdpdPossibleESOption: dpdPossibleESOption);
begin
  Foptions := AdpdPossibleESOption;
  Foptions_Specified := True;
end;

function dpdPossibleESRequest.options_Specified(Index: Integer): boolean;
begin
  Result := Foptions_Specified;
end;

procedure possibleExtraService.Setcode(Index: Integer; const Astring: string);
begin
  Fcode := Astring;
  Fcode_Specified := True;
end;

function possibleExtraService.code_Specified(Index: Integer): boolean;
begin
  Result := Fcode_Specified;
end;

procedure possibleExtraService.Setname_(Index: Integer; const Astring: string);
begin
  Fname_ := Astring;
  Fname__Specified := True;
end;

function possibleExtraService.name__Specified(Index: Integer): boolean;
begin
  Result := Fname__Specified;
end;

initialization
  { DPDGeography2 }
  InvRegistry.RegisterInterface(TypeInfo(DPDGeography2), 'http://dpd.ru/ws/geography/2015-05-20', 'UTF-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(DPDGeography2), '');
  InvRegistry.RegisterInvokeOptions(TypeInfo(DPDGeography2), ioDocument);
  { DPDGeography2.getStoragePeriod }
  InvRegistry.RegisterMethodInfo(TypeInfo(DPDGeography2), 'getStoragePeriod', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(DPDGeography2), 'getStoragePeriod', 'request', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(DPDGeography2), 'getStoragePeriod', 'return', '',
                                '[ArrayItemName="terminal"]', IS_UNQL);
  { DPDGeography2.getCitiesCashPay }
  InvRegistry.RegisterMethodInfo(TypeInfo(DPDGeography2), 'getCitiesCashPay', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNBD or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(DPDGeography2), 'getCitiesCashPay', 'request', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(DPDGeography2), 'getCitiesCashPay', 'return', '',
                                '[ArrayItemName="return"]', IS_UNBD or IS_UNQL);
  { DPDGeography2.getTerminalsSelfDelivery2 }
  InvRegistry.RegisterMethodInfo(TypeInfo(DPDGeography2), 'getTerminalsSelfDelivery2', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(DPDGeography2), 'getTerminalsSelfDelivery2', 'auth', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(DPDGeography2), 'getTerminalsSelfDelivery2', 'return', '',
                                '[ArrayItemName="terminal"]', IS_UNQL);
  { DPDGeography2.getPossibleExtraService }
  InvRegistry.RegisterMethodInfo(TypeInfo(DPDGeography2), 'getPossibleExtraService', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(DPDGeography2), 'getPossibleExtraService', 'request', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(DPDGeography2), 'getPossibleExtraService', 'return', '',
                                '', IS_UNQL);
  { DPDGeography2.getParcelShops }
  InvRegistry.RegisterMethodInfo(TypeInfo(DPDGeography2), 'getParcelShops', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(DPDGeography2), 'getParcelShops', 'request', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(DPDGeography2), 'getParcelShops', 'return', '',
                                '[ArrayItemName="parcelShop"]', IS_UNQL);
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_possibleExtraService), 'http://dpd.ru/ws/geography/2015-05-20', 'Array_Of_possibleExtraService');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_storagePeriod), 'http://dpd.ru/ws/geography/2015-05-20', 'Array_Of_storagePeriod');
  RemClassRegistry.RegisterXSInfo(TypeInfo(getCitiesCashPayResponse), 'http://dpd.ru/ws/geography/2015-05-20', 'getCitiesCashPayResponse');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_extraServiceParam), 'http://dpd.ru/ws/geography/2015-05-20', 'Array_Of_extraServiceParam');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_extraService), 'http://dpd.ru/ws/geography/2015-05-20', 'Array_Of_extraService');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_schedule), 'http://dpd.ru/ws/geography/2015-05-20', 'Array_Of_schedule');
  RemClassRegistry.RegisterXSInfo(TypeInfo(dpdTerminals), 'http://dpd.ru/ws/geography/2015-05-20', 'dpdTerminals');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_timetable), 'http://dpd.ru/ws/geography/2015-05-20', 'Array_Of_timetable');
  RemClassRegistry.RegisterXSClass(geoCoordinates, 'http://dpd.ru/ws/geography/2015-05-20', 'geoCoordinates');
  RemClassRegistry.RegisterXSClass(timetable, 'http://dpd.ru/ws/geography/2015-05-20', 'timetable');
  RemClassRegistry.RegisterXSClass(extraServiceParam, 'http://dpd.ru/ws/geography/2015-05-20', 'extraServiceParam');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(extraServiceParam), 'name_', '[ExtName="name"]');
  RemClassRegistry.RegisterXSClass(schedule, 'http://dpd.ru/ws/geography/2015-05-20', 'schedule');
  RemClassRegistry.RegisterXSClass(extraService, 'http://dpd.ru/ws/geography/2015-05-20', 'extraService');
  RemClassRegistry.RegisterXSInfo(TypeInfo(services), 'http://dpd.ru/ws/geography/2015-05-20', 'services');
  RemClassRegistry.RegisterXSClass(dpdCitiesCashPayRequest, 'http://dpd.ru/ws/geography/2015-05-20', 'dpdCitiesCashPayRequest');
  RemClassRegistry.RegisterXSClass(terminalStoragePeriods, 'http://dpd.ru/ws/geography/2015-05-20', 'terminalStoragePeriods');
  RemClassRegistry.RegisterXSClass(storagePeriod, 'http://dpd.ru/ws/geography/2015-05-20', 'storagePeriod');
  RemClassRegistry.RegisterXSClass(WSFault, 'http://dpd.ru/ws/geography/2015-05-20', 'WSFault');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(WSFault), 'message_', '[ExtName="message"]');
  RemClassRegistry.RegisterXSClass(storagePeriodRequest, 'http://dpd.ru/ws/geography/2015-05-20', 'storagePeriodRequest');
  RemClassRegistry.RegisterXSClass(city, 'http://dpd.ru/ws/geography/2015-05-20', 'city');
  RemClassRegistry.RegisterXSClass(auth, 'http://dpd.ru/ws/geography/2015-05-20', 'auth');
  RemClassRegistry.RegisterXSClass(address, 'http://dpd.ru/ws/geography/2015-05-20', 'address');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(address), 'index_', '[ExtName="index"]');
  RemClassRegistry.RegisterXSClass(terminalSelf, 'http://dpd.ru/ws/geography/2015-05-20', 'terminalSelf');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(terminalSelf), 'services', '[ArrayItemName="serviceCode"]');
  RemClassRegistry.RegisterXSInfo(TypeInfo(selfTerminals), 'http://dpd.ru/ws/geography/2015-05-20', 'selfTerminals');
  RemClassRegistry.RegisterXSInfo(TypeInfo(dpdParcelShops), 'http://dpd.ru/ws/geography/2015-05-20', 'dpdParcelShops');
  RemClassRegistry.RegisterXSClass(dpdParcelShopRequest, 'http://dpd.ru/ws/geography/2015-05-20', 'dpdParcelShopRequest');
  RemClassRegistry.RegisterXSInfo(TypeInfo(services2), 'http://dpd.ru/ws/geography/2015-05-20', 'services2', 'services');
  RemClassRegistry.RegisterXSClass(limits, 'http://dpd.ru/ws/geography/2015-05-20', 'limits');
  RemClassRegistry.RegisterXSClass(parcelShop, 'http://dpd.ru/ws/geography/2015-05-20', 'parcelShop');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(parcelShop), 'services', '[ArrayItemName="serviceCode"]');
  RemClassRegistry.RegisterXSClass(dpdPossibleESResult, 'http://dpd.ru/ws/geography/2015-05-20', 'dpdPossibleESResult');
  RemClassRegistry.RegisterXSClass(dpdPossibleESPickupDelivery, 'http://dpd.ru/ws/geography/2015-05-20', 'dpdPossibleESPickupDelivery');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(dpdPossibleESPickupDelivery), 'index_', '[ExtName="index"]');
  RemClassRegistry.RegisterXSClass(WSFault2, 'http://dpd.ru/ws/geography/2015-05-20', 'WSFault2', 'WSFault');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(WSFault2), 'message_', '[ExtName="message"]');
  RemClassRegistry.RegisterXSInfo(TypeInfo(dpdPossibleESOption), 'http://dpd.ru/ws/geography/2015-05-20', 'dpdPossibleESOption');
  RemClassRegistry.RegisterXSClass(dpdPossibleESRequest, 'http://dpd.ru/ws/geography/2015-05-20', 'dpdPossibleESRequest');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(dpdPossibleESRequest), 'options', '[ArrayItemName="option"]');
  RemClassRegistry.RegisterXSClass(possibleExtraService, 'http://dpd.ru/ws/geography/2015-05-20', 'possibleExtraService');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(possibleExtraService), 'name_', '[ExtName="name"]');

end.