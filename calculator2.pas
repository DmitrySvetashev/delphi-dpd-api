// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : http://wstest.dpd.ru/services/calculator2?wsdl
//  >Import : http://wstest.dpd.ru/services/calculator2?wsdl>0
//  >Import : http://wstest.dpd.ru/services/calculator2?xsd=1
// Encoding : UTF-8
// Version  : 1.0
// (07.09.2021 0:39:34 - - $Rev: 96726 $)
// ************************************************************************ //

unit calculator2;

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
  // !:string          - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:long            - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:int             - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:double          - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:boolean         - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:date            - "http://www.w3.org/2001/XMLSchema"[Gbl]

  ServiceCostFault2    = class;                 { "http://dpd.ru/ws/calculator/2012-03-20"[Flt][GblElm] }
  ServiceCostFault     = class;                 { "http://dpd.ru/ws/calculator/2012-03-20"[Flt][GblElm] }
  ServiceCostFault3    = class;                 { "http://dpd.ru/ws/calculator/2012-03-20"[GblCplx] }
  cityInternRequest    = class;                 { "http://dpd.ru/ws/calculator/2012-03-20"[GblCplx] }
  serviceCostInternational = class;             { "http://dpd.ru/ws/calculator/2012-03-20"[GblCplx] }
  parcelRequest        = class;                 { "http://dpd.ru/ws/calculator/2012-03-20"[GblCplx] }
  serviceCostInternRequest = class;             { "http://dpd.ru/ws/calculator/2012-03-20"[GblCplx] }
  serviceCostInternByParcelsRequest = class;    { "http://dpd.ru/ws/calculator/2012-03-20"[GblCplx] }
  cityIndex            = class;                 { "http://dpd.ru/ws/calculator/2012-03-20"[GblCplx] }
  ServiceCostFault22   = class;                 { "http://dpd.ru/ws/calculator/2012-03-20"[GblCplx] }
  cityInternationalRequest = class;             { "http://dpd.ru/ws/calculator/2012-03-20"[GblCplx] }
  serviceCostInternationalRequest = class;      { "http://dpd.ru/ws/calculator/2012-03-20"[GblCplx] }
  cityRequest          = class;                 { "http://dpd.ru/ws/calculator/2012-03-20"[GblCplx] }
  city                 = class;                 { "http://dpd.ru/ws/calculator/2012-03-20"[GblCplx] }
  serviceCost          = class;                 { "http://dpd.ru/ws/calculator/2012-03-20"[GblCplx] }
  serviceCostParcelsRequest = class;            { "http://dpd.ru/ws/calculator/2012-03-20"[GblCplx] }
  serviceCostRequest   = class;                 { "http://dpd.ru/ws/calculator/2012-03-20"[GblCplx] }

  Array_Of_cityIndex = array of cityIndex;      { "http://dpd.ru/ws/calculator/2012-03-20"[GblUbnd] }
  Array_Of_city = array of city;                { "http://dpd.ru/ws/calculator/2012-03-20"[GblUbnd] }
  Array_Of_parcelRequest = array of parcelRequest;   { "http://dpd.ru/ws/calculator/2012-03-20"[GblUbnd] }


  // ************************************************************************ //
  // XML       : ServiceCostFault2, global, <element>
  // Namespace : http://dpd.ru/ws/calculator/2012-03-20
  // Info      : Fault
  // Base Types: ServiceCostFault2
  // ************************************************************************ //
  ServiceCostFault2 = class(ERemotableException)
  private
    Fcode: string;
    Fcode_Specified: boolean;
    FdeliveryDups: Array_Of_cityIndex;
    FdeliveryDups_Specified: boolean;
    Fmessage_: string;
    Fmessage__Specified: boolean;
    FpickupDups: Array_Of_cityIndex;
    FpickupDups_Specified: boolean;
    procedure Setcode(Index: Integer; const Astring: string);
    function  code_Specified(Index: Integer): boolean;
    procedure SetdeliveryDups(Index: Integer; const AArray_Of_cityIndex: Array_Of_cityIndex);
    function  deliveryDups_Specified(Index: Integer): boolean;
    procedure Setmessage_(Index: Integer; const Astring: string);
    function  message__Specified(Index: Integer): boolean;
    procedure SetpickupDups(Index: Integer; const AArray_Of_cityIndex: Array_Of_cityIndex);
    function  pickupDups_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property code:         string              Index (IS_OPTN or IS_UNQL) read Fcode write Setcode stored code_Specified;
    property deliveryDups: Array_Of_cityIndex  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FdeliveryDups write SetdeliveryDups stored deliveryDups_Specified;
    property message_:     string              Index (IS_OPTN or IS_UNQL) read Fmessage_ write Setmessage_ stored message__Specified;
    property pickupDups:   Array_Of_cityIndex  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FpickupDups write SetpickupDups stored pickupDups_Specified;
  end;



  // ************************************************************************ //
  // XML       : ServiceCostFault, global, <element>
  // Namespace : http://dpd.ru/ws/calculator/2012-03-20
  // Info      : Fault
  // Base Types: ServiceCostFault
  // ************************************************************************ //
  ServiceCostFault = class(ERemotableException)
  private
    Fcode: string;
    Fcode_Specified: boolean;
    FdeliveryDups: Array_Of_city;
    FdeliveryDups_Specified: boolean;
    Fmessage_: string;
    Fmessage__Specified: boolean;
    FpickupDups: Array_Of_city;
    FpickupDups_Specified: boolean;
    procedure Setcode(Index: Integer; const Astring: string);
    function  code_Specified(Index: Integer): boolean;
    procedure SetdeliveryDups(Index: Integer; const AArray_Of_city: Array_Of_city);
    function  deliveryDups_Specified(Index: Integer): boolean;
    procedure Setmessage_(Index: Integer; const Astring: string);
    function  message__Specified(Index: Integer): boolean;
    procedure SetpickupDups(Index: Integer; const AArray_Of_city: Array_Of_city);
    function  pickupDups_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property code:         string         Index (IS_OPTN or IS_UNQL) read Fcode write Setcode stored code_Specified;
    property deliveryDups: Array_Of_city  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FdeliveryDups write SetdeliveryDups stored deliveryDups_Specified;
    property message_:     string         Index (IS_OPTN or IS_UNQL) read Fmessage_ write Setmessage_ stored message__Specified;
    property pickupDups:   Array_Of_city  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FpickupDups write SetpickupDups stored pickupDups_Specified;
  end;



  // ************************************************************************ //
  // XML       : ServiceCostFault, global, <complexType>
  // Namespace : http://dpd.ru/ws/calculator/2012-03-20
  // ************************************************************************ //
  ServiceCostFault3 = class(TRemotable)
  private
    Fcode: string;
    Fcode_Specified: boolean;
    FdeliveryDups: Array_Of_city;
    FdeliveryDups_Specified: boolean;
    Fmessage_: string;
    Fmessage__Specified: boolean;
    FpickupDups: Array_Of_city;
    FpickupDups_Specified: boolean;
    procedure Setcode(Index: Integer; const Astring: string);
    function  code_Specified(Index: Integer): boolean;
    procedure SetdeliveryDups(Index: Integer; const AArray_Of_city: Array_Of_city);
    function  deliveryDups_Specified(Index: Integer): boolean;
    procedure Setmessage_(Index: Integer; const Astring: string);
    function  message__Specified(Index: Integer): boolean;
    procedure SetpickupDups(Index: Integer; const AArray_Of_city: Array_Of_city);
    function  pickupDups_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property code:         string         Index (IS_OPTN or IS_UNQL) read Fcode write Setcode stored code_Specified;
    property deliveryDups: Array_Of_city  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FdeliveryDups write SetdeliveryDups stored deliveryDups_Specified;
    property message_:     string         Index (IS_OPTN or IS_UNQL) read Fmessage_ write Setmessage_ stored message__Specified;
    property pickupDups:   Array_Of_city  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FpickupDups write SetpickupDups stored pickupDups_Specified;
  end;

  getServiceCostInternResponse = array of serviceCostInternational;   { "http://dpd.ru/ws/calculator/2012-03-20"[Lit][GblCplx] }

          // ************************************************************************ //
  // XML       : cityInternRequest, global, <complexType>
  // Namespace : http://dpd.ru/ws/calculator/2012-03-20
  // ************************************************************************ //
  cityInternRequest = class(TRemotable)
  private
    FcityId: Int64;
    FcityId_Specified: boolean;
    Findex_: string;
    Findex__Specified: boolean;
    FcityName: string;
    FcityName_Specified: boolean;
    FregionCode: Integer;
    FregionCode_Specified: boolean;
    FcountryCode: string;
    FcountryCode_Specified: boolean;
    FcountryName: string;
    FcountryName_Specified: boolean;
    procedure SetcityId(Index: Integer; const AInt64: Int64);
    function  cityId_Specified(Index: Integer): boolean;
    procedure Setindex_(Index: Integer; const Astring: string);
    function  index__Specified(Index: Integer): boolean;
    procedure SetcityName(Index: Integer; const Astring: string);
    function  cityName_Specified(Index: Integer): boolean;
    procedure SetregionCode(Index: Integer; const AInteger: Integer);
    function  regionCode_Specified(Index: Integer): boolean;
    procedure SetcountryCode(Index: Integer; const Astring: string);
    function  countryCode_Specified(Index: Integer): boolean;
    procedure SetcountryName(Index: Integer; const Astring: string);
    function  countryName_Specified(Index: Integer): boolean;
  published
    property cityId:      Int64    Index (IS_OPTN or IS_UNQL) read FcityId write SetcityId stored cityId_Specified;
    property index_:      string   Index (IS_OPTN or IS_UNQL) read Findex_ write Setindex_ stored index__Specified;
    property cityName:    string   Index (IS_OPTN or IS_UNQL) read FcityName write SetcityName stored cityName_Specified;
    property regionCode:  Integer  Index (IS_OPTN or IS_UNQL) read FregionCode write SetregionCode stored regionCode_Specified;
    property countryCode: string   Index (IS_OPTN or IS_UNQL) read FcountryCode write SetcountryCode stored countryCode_Specified;
    property countryName: string   Index (IS_OPTN or IS_UNQL) read FcountryName write SetcountryName stored countryName_Specified;
  end;



  // ************************************************************************ //
  // XML       : serviceCostInternational, global, <complexType>
  // Namespace : http://dpd.ru/ws/calculator/2012-03-20
  // ************************************************************************ //
  serviceCostInternational = class(TRemotable)
  private
    FserviceCode: string;
    FserviceCode_Specified: boolean;
    FserviceName: string;
    FserviceName_Specified: boolean;
    Fdays: string;
    Fdays_Specified: boolean;
    Fcost: Double;
    Fcost_Specified: boolean;
    FcostPin: Double;
    FcostPin_Specified: boolean;
    Fweight: Double;
    Fweight_Specified: boolean;
    Fvolume: Double;
    Fvolume_Specified: boolean;
    procedure SetserviceCode(Index: Integer; const Astring: string);
    function  serviceCode_Specified(Index: Integer): boolean;
    procedure SetserviceName(Index: Integer; const Astring: string);
    function  serviceName_Specified(Index: Integer): boolean;
    procedure Setdays(Index: Integer; const Astring: string);
    function  days_Specified(Index: Integer): boolean;
    procedure Setcost(Index: Integer; const ADouble: Double);
    function  cost_Specified(Index: Integer): boolean;
    procedure SetcostPin(Index: Integer; const ADouble: Double);
    function  costPin_Specified(Index: Integer): boolean;
    procedure Setweight(Index: Integer; const ADouble: Double);
    function  weight_Specified(Index: Integer): boolean;
    procedure Setvolume(Index: Integer; const ADouble: Double);
    function  volume_Specified(Index: Integer): boolean;
  published
    property serviceCode: string  Index (IS_OPTN or IS_UNQL) read FserviceCode write SetserviceCode stored serviceCode_Specified;
    property serviceName: string  Index (IS_OPTN or IS_UNQL) read FserviceName write SetserviceName stored serviceName_Specified;
    property days:        string  Index (IS_OPTN or IS_UNQL) read Fdays write Setdays stored days_Specified;
    property cost:        Double  Index (IS_OPTN or IS_UNQL) read Fcost write Setcost stored cost_Specified;
    property costPin:     Double  Index (IS_OPTN or IS_UNQL) read FcostPin write SetcostPin stored costPin_Specified;
    property weight:      Double  Index (IS_OPTN or IS_UNQL) read Fweight write Setweight stored weight_Specified;
    property volume:      Double  Index (IS_OPTN or IS_UNQL) read Fvolume write Setvolume stored volume_Specified;
  end;



  // ************************************************************************ //
  // XML       : parcelRequest, global, <complexType>
  // Namespace : http://dpd.ru/ws/calculator/2012-03-20
  // ************************************************************************ //
  parcelRequest = class(TRemotable)
  private
    Fweight: Double;
    Flength: Double;
    Fwidth: Double;
    Fheight: Double;
    Fquantity: Integer;
    Fquantity_Specified: boolean;
    procedure Setquantity(Index: Integer; const AInteger: Integer);
    function  quantity_Specified(Index: Integer): boolean;
  published
    property weight:   Double   Index (IS_UNQL) read Fweight write Fweight;
    property length:   Double   Index (IS_UNQL) read Flength write Flength;
    property width:    Double   Index (IS_UNQL) read Fwidth write Fwidth;
    property height:   Double   Index (IS_UNQL) read Fheight write Fheight;
    property quantity: Integer  Index (IS_OPTN or IS_UNQL) read Fquantity write Setquantity stored quantity_Specified;
  end;



  // ************************************************************************ //
  // XML       : serviceCostInternRequest, global, <complexType>
  // Namespace : http://dpd.ru/ws/calculator/2012-03-20
  // ************************************************************************ //
  serviceCostInternRequest = class(TRemotable)
  private
    Fauth: auth;
    Fpickup: cityInternRequest;
    Fdelivery: cityInternRequest;
    FselfPickup: Boolean;
    FselfDelivery: Boolean;
    Fweight: Double;
    Fvolume: Double;
    Fvolume_Specified: boolean;
    Fcount: Integer;
    FmaxParcelWeight: Double;
    FmaxParcelLength: Int64;
    FmaxParcelWidth: Int64;
    FmaxParcelHeight: Int64;
    FdeclaredValue: Double;
    FdeclaredValue_Specified: boolean;
    Finsurance: Boolean;
    Finsurance_Specified: boolean;
    Fparcel: Array_Of_parcelRequest;
    Fparcel_Specified: boolean;
    procedure Setvolume(Index: Integer; const ADouble: Double);
    function  volume_Specified(Index: Integer): boolean;
    procedure SetdeclaredValue(Index: Integer; const ADouble: Double);
    function  declaredValue_Specified(Index: Integer): boolean;
    procedure Setinsurance(Index: Integer; const ABoolean: Boolean);
    function  insurance_Specified(Index: Integer): boolean;
    procedure Setparcel(Index: Integer; const AArray_Of_parcelRequest: Array_Of_parcelRequest);
    function  parcel_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property auth:            auth                    Index (IS_UNQL) read Fauth write Fauth;
    property pickup:          cityInternRequest       Index (IS_UNQL) read Fpickup write Fpickup;
    property delivery:        cityInternRequest       Index (IS_UNQL) read Fdelivery write Fdelivery;
    property selfPickup:      Boolean                 Index (IS_UNQL) read FselfPickup write FselfPickup;
    property selfDelivery:    Boolean                 Index (IS_UNQL) read FselfDelivery write FselfDelivery;
    property weight:          Double                  Index (IS_UNQL) read Fweight write Fweight;
    property volume:          Double                  Index (IS_OPTN or IS_UNQL) read Fvolume write Setvolume stored volume_Specified;
    property count:           Integer                 Index (IS_UNQL) read Fcount write Fcount;
    property maxParcelWeight: Double                  Index (IS_UNQL) read FmaxParcelWeight write FmaxParcelWeight;
    property maxParcelLength: Int64                   Index (IS_UNQL) read FmaxParcelLength write FmaxParcelLength;
    property maxParcelWidth:  Int64                   Index (IS_UNQL) read FmaxParcelWidth write FmaxParcelWidth;
    property maxParcelHeight: Int64                   Index (IS_UNQL) read FmaxParcelHeight write FmaxParcelHeight;
    property declaredValue:   Double                  Index (IS_OPTN or IS_UNQL) read FdeclaredValue write SetdeclaredValue stored declaredValue_Specified;
    property insurance:       Boolean                 Index (IS_OPTN or IS_UNQL) read Finsurance write Setinsurance stored insurance_Specified;
    property parcel:          Array_Of_parcelRequest  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read Fparcel write Setparcel stored parcel_Specified;
  end;



  // ************************************************************************ //
  // XML       : serviceCostInternByParcelsRequest, global, <complexType>
  // Namespace : http://dpd.ru/ws/calculator/2012-03-20
  // ************************************************************************ //
  serviceCostInternByParcelsRequest = class(TRemotable)
  private
    Fauth: auth;
    Fpickup: cityInternRequest;
    Fdelivery: cityInternRequest;
    FselfPickup: Boolean;
    FselfDelivery: Boolean;
    FdeclaredValue: Double;
    FdeclaredValue_Specified: boolean;
    Finsurance: Boolean;
    Finsurance_Specified: boolean;
    Fparcel: Array_Of_parcelRequest;
    procedure SetdeclaredValue(Index: Integer; const ADouble: Double);
    function  declaredValue_Specified(Index: Integer): boolean;
    procedure Setinsurance(Index: Integer; const ABoolean: Boolean);
    function  insurance_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property auth:          auth                    Index (IS_UNQL) read Fauth write Fauth;
    property pickup:        cityInternRequest       Index (IS_UNQL) read Fpickup write Fpickup;
    property delivery:      cityInternRequest       Index (IS_UNQL) read Fdelivery write Fdelivery;
    property selfPickup:    Boolean                 Index (IS_UNQL) read FselfPickup write FselfPickup;
    property selfDelivery:  Boolean                 Index (IS_UNQL) read FselfDelivery write FselfDelivery;
    property declaredValue: Double                  Index (IS_OPTN or IS_UNQL) read FdeclaredValue write SetdeclaredValue stored declaredValue_Specified;
    property insurance:     Boolean                 Index (IS_OPTN or IS_UNQL) read Finsurance write Setinsurance stored insurance_Specified;
    property parcel:        Array_Of_parcelRequest  Index (IS_UNBD or IS_UNQL) read Fparcel write Fparcel;
  end;



  // ************************************************************************ //
  // XML       : cityIndex, global, <complexType>
  // Namespace : http://dpd.ru/ws/calculator/2012-03-20
  // ************************************************************************ //
  cityIndex = class(TRemotable)
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
  // XML       : ServiceCostFault2, global, <complexType>
  // Namespace : http://dpd.ru/ws/calculator/2012-03-20
  // ************************************************************************ //
  ServiceCostFault22 = class(TRemotable)
  private
    Fcode: string;
    Fcode_Specified: boolean;
    FdeliveryDups: Array_Of_cityIndex;
    FdeliveryDups_Specified: boolean;
    Fmessage_: string;
    Fmessage__Specified: boolean;
    FpickupDups: Array_Of_cityIndex;
    FpickupDups_Specified: boolean;
    procedure Setcode(Index: Integer; const Astring: string);
    function  code_Specified(Index: Integer): boolean;
    procedure SetdeliveryDups(Index: Integer; const AArray_Of_cityIndex: Array_Of_cityIndex);
    function  deliveryDups_Specified(Index: Integer): boolean;
    procedure Setmessage_(Index: Integer; const Astring: string);
    function  message__Specified(Index: Integer): boolean;
    procedure SetpickupDups(Index: Integer; const AArray_Of_cityIndex: Array_Of_cityIndex);
    function  pickupDups_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property code:         string              Index (IS_OPTN or IS_UNQL) read Fcode write Setcode stored code_Specified;
    property deliveryDups: Array_Of_cityIndex  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FdeliveryDups write SetdeliveryDups stored deliveryDups_Specified;
    property message_:     string              Index (IS_OPTN or IS_UNQL) read Fmessage_ write Setmessage_ stored message__Specified;
    property pickupDups:   Array_Of_cityIndex  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FpickupDups write SetpickupDups stored pickupDups_Specified;
  end;



  // ************************************************************************ //
  // XML       : cityInternationalRequest, global, <complexType>
  // Namespace : http://dpd.ru/ws/calculator/2012-03-20
  // ************************************************************************ //
  cityInternationalRequest = class(TRemotable)
  private
    FcountryName: string;
    FcityName: string;
    FcityName_Specified: boolean;
    FcityId: Int64;
    FcityId_Specified: boolean;
    procedure SetcityName(Index: Integer; const Astring: string);
    function  cityName_Specified(Index: Integer): boolean;
    procedure SetcityId(Index: Integer; const AInt64: Int64);
    function  cityId_Specified(Index: Integer): boolean;
  published
    property countryName: string  Index (IS_UNQL) read FcountryName write FcountryName;
    property cityName:    string  Index (IS_OPTN or IS_UNQL) read FcityName write SetcityName stored cityName_Specified;
    property cityId:      Int64   Index (IS_OPTN or IS_UNQL) read FcityId write SetcityId stored cityId_Specified;
  end;



  // ************************************************************************ //
  // XML       : serviceCostInternationalRequest, global, <complexType>
  // Namespace : http://dpd.ru/ws/calculator/2012-03-20
  // ************************************************************************ //
  serviceCostInternationalRequest = class(TRemotable)
  private
    Fauth: auth;
    Fpickup: cityInternationalRequest;
    Fdelivery: cityInternationalRequest;
    FselfPickup: Boolean;
    FselfDelivery: Boolean;
    Fweight: Double;
    Flength: Int64;
    Fwidth: Int64;
    Fheight: Int64;
    FdeclaredValue: Double;
    FdeclaredValue_Specified: boolean;
    Finsurance: Boolean;
    Finsurance_Specified: boolean;
    procedure SetdeclaredValue(Index: Integer; const ADouble: Double);
    function  declaredValue_Specified(Index: Integer): boolean;
    procedure Setinsurance(Index: Integer; const ABoolean: Boolean);
    function  insurance_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property auth:          auth                      Index (IS_UNQL) read Fauth write Fauth;
    property pickup:        cityInternationalRequest  Index (IS_UNQL) read Fpickup write Fpickup;
    property delivery:      cityInternationalRequest  Index (IS_UNQL) read Fdelivery write Fdelivery;
    property selfPickup:    Boolean                   Index (IS_UNQL) read FselfPickup write FselfPickup;
    property selfDelivery:  Boolean                   Index (IS_UNQL) read FselfDelivery write FselfDelivery;
    property weight:        Double                    Index (IS_UNQL) read Fweight write Fweight;
    property length:        Int64                     Index (IS_UNQL) read Flength write Flength;
    property width:         Int64                     Index (IS_UNQL) read Fwidth write Fwidth;
    property height:        Int64                     Index (IS_UNQL) read Fheight write Fheight;
    property declaredValue: Double                    Index (IS_OPTN or IS_UNQL) read FdeclaredValue write SetdeclaredValue stored declaredValue_Specified;
    property insurance:     Boolean                   Index (IS_OPTN or IS_UNQL) read Finsurance write Setinsurance stored insurance_Specified;
  end;



  // ************************************************************************ //
  // XML       : cityRequest, global, <complexType>
  // Namespace : http://dpd.ru/ws/calculator/2012-03-20
  // ************************************************************************ //
  cityRequest = class(TRemotable)
  private
    FcityId: Int64;
    FcityId_Specified: boolean;
    Findex_: string;
    Findex__Specified: boolean;
    FcityName: string;
    FcityName_Specified: boolean;
    FregionCode: Integer;
    FregionCode_Specified: boolean;
    FcountryCode: string;
    FcountryCode_Specified: boolean;
    procedure SetcityId(Index: Integer; const AInt64: Int64);
    function  cityId_Specified(Index: Integer): boolean;
    procedure Setindex_(Index: Integer; const Astring: string);
    function  index__Specified(Index: Integer): boolean;
    procedure SetcityName(Index: Integer; const Astring: string);
    function  cityName_Specified(Index: Integer): boolean;
    procedure SetregionCode(Index: Integer; const AInteger: Integer);
    function  regionCode_Specified(Index: Integer): boolean;
    procedure SetcountryCode(Index: Integer; const Astring: string);
    function  countryCode_Specified(Index: Integer): boolean;
  published
    property cityId:      Int64    Index (IS_OPTN or IS_UNQL) read FcityId write SetcityId stored cityId_Specified;
    property index_:      string   Index (IS_OPTN or IS_UNQL) read Findex_ write Setindex_ stored index__Specified;
    property cityName:    string   Index (IS_OPTN or IS_UNQL) read FcityName write SetcityName stored cityName_Specified;
    property regionCode:  Integer  Index (IS_OPTN or IS_UNQL) read FregionCode write SetregionCode stored regionCode_Specified;
    property countryCode: string   Index (IS_OPTN or IS_UNQL) read FcountryCode write SetcountryCode stored countryCode_Specified;
  end;



  // ************************************************************************ //
  // XML       : city, global, <complexType>
  // Namespace : http://dpd.ru/ws/calculator/2012-03-20
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
    FcityName: string;
    FcityName_Specified: boolean;
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
    procedure SetcityName(Index: Integer; const Astring: string);
    function  cityName_Specified(Index: Integer): boolean;
  published
    property cityId:      Int64    Index (IS_OPTN or IS_UNQL) read FcityId write SetcityId stored cityId_Specified;
    property countryCode: string   Index (IS_OPTN or IS_UNQL) read FcountryCode write SetcountryCode stored countryCode_Specified;
    property countryName: string   Index (IS_OPTN or IS_UNQL) read FcountryName write SetcountryName stored countryName_Specified;
    property regionCode:  Integer  Index (IS_OPTN or IS_UNQL) read FregionCode write SetregionCode stored regionCode_Specified;
    property regionName:  string   Index (IS_OPTN or IS_UNQL) read FregionName write SetregionName stored regionName_Specified;
    property cityName:    string   Index (IS_OPTN or IS_UNQL) read FcityName write SetcityName stored cityName_Specified;
  end;



  // ************************************************************************ //
  // XML       : serviceCost, global, <complexType>
  // Namespace : http://dpd.ru/ws/calculator/2012-03-20
  // ************************************************************************ //
  serviceCost = class(TRemotable)
  private
    FserviceCode: string;
    FserviceCode_Specified: boolean;
    FserviceName: string;
    FserviceName_Specified: boolean;
    Fcost: Double;
    Fcost_Specified: boolean;
    Fdays: Integer;
    Fdays_Specified: boolean;
    procedure SetserviceCode(Index: Integer; const Astring: string);
    function  serviceCode_Specified(Index: Integer): boolean;
    procedure SetserviceName(Index: Integer; const Astring: string);
    function  serviceName_Specified(Index: Integer): boolean;
    procedure Setcost(Index: Integer; const ADouble: Double);
    function  cost_Specified(Index: Integer): boolean;
    procedure Setdays(Index: Integer; const AInteger: Integer);
    function  days_Specified(Index: Integer): boolean;
  published
    property serviceCode: string   Index (IS_OPTN or IS_UNQL) read FserviceCode write SetserviceCode stored serviceCode_Specified;
    property serviceName: string   Index (IS_OPTN or IS_UNQL) read FserviceName write SetserviceName stored serviceName_Specified;
    property cost:        Double   Index (IS_OPTN or IS_UNQL) read Fcost write Setcost stored cost_Specified;
    property days:        Integer  Index (IS_OPTN or IS_UNQL) read Fdays write Setdays stored days_Specified;
  end;

  getServiceCostByParcels2Response = array of serviceCost;   { "http://dpd.ru/ws/calculator/2012-03-20"[Lit][GblCplx] }


  // ************************************************************************ //
  // XML       : serviceCostParcelsRequest, global, <complexType>
  // Namespace : http://dpd.ru/ws/calculator/2012-03-20
  // ************************************************************************ //
  serviceCostParcelsRequest = class(TRemotable)
  private
    Fauth: auth;
    Fpickup: cityRequest;
    Fdelivery: cityRequest;
    FselfPickup: Boolean;
    FselfDelivery: Boolean;
    FserviceCode: string;
    FserviceCode_Specified: boolean;
    FpickupDate: TXSDate;
    FpickupDate_Specified: boolean;
    FmaxDays: Integer;
    FmaxDays_Specified: boolean;
    FmaxCost: Double;
    FmaxCost_Specified: boolean;
    FdeclaredValue: Double;
    FdeclaredValue_Specified: boolean;
    Fparcel: Array_Of_parcelRequest;
    procedure SetserviceCode(Index: Integer; const Astring: string);
    function  serviceCode_Specified(Index: Integer): boolean;
    procedure SetpickupDate(Index: Integer; const ATXSDate: TXSDate);
    function  pickupDate_Specified(Index: Integer): boolean;
    procedure SetmaxDays(Index: Integer; const AInteger: Integer);
    function  maxDays_Specified(Index: Integer): boolean;
    procedure SetmaxCost(Index: Integer; const ADouble: Double);
    function  maxCost_Specified(Index: Integer): boolean;
    procedure SetdeclaredValue(Index: Integer; const ADouble: Double);
    function  declaredValue_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property auth:          auth                    Index (IS_UNQL) read Fauth write Fauth;
    property pickup:        cityRequest             Index (IS_UNQL) read Fpickup write Fpickup;
    property delivery:      cityRequest             Index (IS_UNQL) read Fdelivery write Fdelivery;
    property selfPickup:    Boolean                 Index (IS_UNQL) read FselfPickup write FselfPickup;
    property selfDelivery:  Boolean                 Index (IS_UNQL) read FselfDelivery write FselfDelivery;
    property serviceCode:   string                  Index (IS_OPTN or IS_UNQL) read FserviceCode write SetserviceCode stored serviceCode_Specified;
    property pickupDate:    TXSDate                 Index (IS_OPTN or IS_UNQL) read FpickupDate write SetpickupDate stored pickupDate_Specified;
    property maxDays:       Integer                 Index (IS_OPTN or IS_UNQL) read FmaxDays write SetmaxDays stored maxDays_Specified;
    property maxCost:       Double                  Index (IS_OPTN or IS_UNQL) read FmaxCost write SetmaxCost stored maxCost_Specified;
    property declaredValue: Double                  Index (IS_OPTN or IS_UNQL) read FdeclaredValue write SetdeclaredValue stored declaredValue_Specified;
    property parcel:        Array_Of_parcelRequest  Index (IS_UNBD or IS_UNQL) read Fparcel write Fparcel;
  end;



  // ************************************************************************ //
  // XML       : serviceCostRequest, global, <complexType>
  // Namespace : http://dpd.ru/ws/calculator/2012-03-20
  // ************************************************************************ //
  serviceCostRequest = class(TRemotable)
  private
    Fauth: auth;
    Fpickup: cityRequest;
    Fdelivery: cityRequest;
    FselfPickup: Boolean;
    FselfDelivery: Boolean;
    Fweight: Double;
    Fvolume: Double;
    Fvolume_Specified: boolean;
    FserviceCode: string;
    FserviceCode_Specified: boolean;
    FpickupDate: TXSDate;
    FpickupDate_Specified: boolean;
    FmaxDays: Integer;
    FmaxDays_Specified: boolean;
    FmaxCost: Double;
    FmaxCost_Specified: boolean;
    FdeclaredValue: Double;
    FdeclaredValue_Specified: boolean;
    procedure Setvolume(Index: Integer; const ADouble: Double);
    function  volume_Specified(Index: Integer): boolean;
    procedure SetserviceCode(Index: Integer; const Astring: string);
    function  serviceCode_Specified(Index: Integer): boolean;
    procedure SetpickupDate(Index: Integer; const ATXSDate: TXSDate);
    function  pickupDate_Specified(Index: Integer): boolean;
    procedure SetmaxDays(Index: Integer; const AInteger: Integer);
    function  maxDays_Specified(Index: Integer): boolean;
    procedure SetmaxCost(Index: Integer; const ADouble: Double);
    function  maxCost_Specified(Index: Integer): boolean;
    procedure SetdeclaredValue(Index: Integer; const ADouble: Double);
    function  declaredValue_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property auth:          auth         Index (IS_UNQL) read Fauth write Fauth;
    property pickup:        cityRequest  Index (IS_UNQL) read Fpickup write Fpickup;
    property delivery:      cityRequest  Index (IS_UNQL) read Fdelivery write Fdelivery;
    property selfPickup:    Boolean      Index (IS_UNQL) read FselfPickup write FselfPickup;
    property selfDelivery:  Boolean      Index (IS_UNQL) read FselfDelivery write FselfDelivery;
    property weight:        Double       Index (IS_UNQL) read Fweight write Fweight;
    property volume:        Double       Index (IS_OPTN or IS_UNQL) read Fvolume write Setvolume stored volume_Specified;
    property serviceCode:   string       Index (IS_OPTN or IS_UNQL) read FserviceCode write SetserviceCode stored serviceCode_Specified;
    property pickupDate:    TXSDate      Index (IS_OPTN or IS_UNQL) read FpickupDate write SetpickupDate stored pickupDate_Specified;
    property maxDays:       Integer      Index (IS_OPTN or IS_UNQL) read FmaxDays write SetmaxDays stored maxDays_Specified;
    property maxCost:       Double       Index (IS_OPTN or IS_UNQL) read FmaxCost write SetmaxCost stored maxCost_Specified;
    property declaredValue: Double       Index (IS_OPTN or IS_UNQL) read FdeclaredValue write SetdeclaredValue stored declaredValue_Specified;
  end;


  // ************************************************************************ //
  // Namespace : http://dpd.ru/ws/calculator/2012-03-20
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : document
  // use       : literal
  // binding   : DPDCalculatorPortBinding
  // service   : DPDCalculatorService
  // port      : DPDCalculatorPort
  // URL       : http://wstest.dpd.ru/services/calculator2
  // ************************************************************************ //
  DPDCalculator = interface(IInvokable)
  ['{9F2D4E53-8EA8-AB0C-39F0-C08AD9EDB6C2}']
    function  getServiceCost(const request: serviceCostRequest): getServiceCostByParcels2Response; stdcall;
    function  getServiceCostByParcels(const request: serviceCostParcelsRequest): getServiceCostByParcels2Response; stdcall;
    function  getServiceCostByParcels2(const request: serviceCostParcelsRequest): getServiceCostByParcels2Response; stdcall;
    function  getServiceCostInternational(const request: serviceCostInternationalRequest): getServiceCostInternResponse; stdcall;
    function  getServiceCostIntern(const request: serviceCostInternRequest): getServiceCostInternResponse; stdcall;
    function  getServiceCostInternByParcels(const request: serviceCostInternByParcelsRequest): getServiceCostInternResponse; stdcall;
    function  getServiceCost2(const request: serviceCostRequest): getServiceCostByParcels2Response; stdcall;
  end;

function GetDPDCalculator(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): DPDCalculator;


implementation
  uses System.SysUtils;

function GetDPDCalculator(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): DPDCalculator;
const
  defWSDL = 'http://wstest.dpd.ru/services/calculator2?wsdl';
  defURL  = 'http://wstest.dpd.ru/services/calculator2';
  defSvc  = 'DPDCalculatorService';
  defPrt  = 'DPDCalculatorPort';
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
    Result := (RIO as DPDCalculator);
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


destructor ServiceCostFault2.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FdeliveryDups)-1 do
    System.SysUtils.FreeAndNil(FdeliveryDups[I]);
  System.SetLength(FdeliveryDups, 0);
  for I := 0 to System.Length(FpickupDups)-1 do
    System.SysUtils.FreeAndNil(FpickupDups[I]);
  System.SetLength(FpickupDups, 0);
  inherited Destroy;
end;

procedure ServiceCostFault2.Setcode(Index: Integer; const Astring: string);
begin
  Fcode := Astring;
  Fcode_Specified := True;
end;

function ServiceCostFault2.code_Specified(Index: Integer): boolean;
begin
  Result := Fcode_Specified;
end;

procedure ServiceCostFault2.SetdeliveryDups(Index: Integer; const AArray_Of_cityIndex: Array_Of_cityIndex);
begin
  FdeliveryDups := AArray_Of_cityIndex;
  FdeliveryDups_Specified := True;
end;

function ServiceCostFault2.deliveryDups_Specified(Index: Integer): boolean;
begin
  Result := FdeliveryDups_Specified;
end;

procedure ServiceCostFault2.Setmessage_(Index: Integer; const Astring: string);
begin
  Fmessage_ := Astring;
  Fmessage__Specified := True;
end;

function ServiceCostFault2.message__Specified(Index: Integer): boolean;
begin
  Result := Fmessage__Specified;
end;

procedure ServiceCostFault2.SetpickupDups(Index: Integer; const AArray_Of_cityIndex: Array_Of_cityIndex);
begin
  FpickupDups := AArray_Of_cityIndex;
  FpickupDups_Specified := True;
end;

function ServiceCostFault2.pickupDups_Specified(Index: Integer): boolean;
begin
  Result := FpickupDups_Specified;
end;

destructor ServiceCostFault.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FdeliveryDups)-1 do
    System.SysUtils.FreeAndNil(FdeliveryDups[I]);
  System.SetLength(FdeliveryDups, 0);
  for I := 0 to System.Length(FpickupDups)-1 do
    System.SysUtils.FreeAndNil(FpickupDups[I]);
  System.SetLength(FpickupDups, 0);
  inherited Destroy;
end;

procedure ServiceCostFault.Setcode(Index: Integer; const Astring: string);
begin
  Fcode := Astring;
  Fcode_Specified := True;
end;

function ServiceCostFault.code_Specified(Index: Integer): boolean;
begin
  Result := Fcode_Specified;
end;

procedure ServiceCostFault.SetdeliveryDups(Index: Integer; const AArray_Of_city: Array_Of_city);
begin
  FdeliveryDups := AArray_Of_city;
  FdeliveryDups_Specified := True;
end;

function ServiceCostFault.deliveryDups_Specified(Index: Integer): boolean;
begin
  Result := FdeliveryDups_Specified;
end;

procedure ServiceCostFault.Setmessage_(Index: Integer; const Astring: string);
begin
  Fmessage_ := Astring;
  Fmessage__Specified := True;
end;

function ServiceCostFault.message__Specified(Index: Integer): boolean;
begin
  Result := Fmessage__Specified;
end;

procedure ServiceCostFault.SetpickupDups(Index: Integer; const AArray_Of_city: Array_Of_city);
begin
  FpickupDups := AArray_Of_city;
  FpickupDups_Specified := True;
end;

function ServiceCostFault.pickupDups_Specified(Index: Integer): boolean;
begin
  Result := FpickupDups_Specified;
end;

destructor ServiceCostFault3.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FdeliveryDups)-1 do
    System.SysUtils.FreeAndNil(FdeliveryDups[I]);
  System.SetLength(FdeliveryDups, 0);
  for I := 0 to System.Length(FpickupDups)-1 do
    System.SysUtils.FreeAndNil(FpickupDups[I]);
  System.SetLength(FpickupDups, 0);
  inherited Destroy;
end;

procedure ServiceCostFault3.Setcode(Index: Integer; const Astring: string);
begin
  Fcode := Astring;
  Fcode_Specified := True;
end;

function ServiceCostFault3.code_Specified(Index: Integer): boolean;
begin
  Result := Fcode_Specified;
end;

procedure ServiceCostFault3.SetdeliveryDups(Index: Integer; const AArray_Of_city: Array_Of_city);
begin
  FdeliveryDups := AArray_Of_city;
  FdeliveryDups_Specified := True;
end;

function ServiceCostFault3.deliveryDups_Specified(Index: Integer): boolean;
begin
  Result := FdeliveryDups_Specified;
end;

procedure ServiceCostFault3.Setmessage_(Index: Integer; const Astring: string);
begin
  Fmessage_ := Astring;
  Fmessage__Specified := True;
end;

function ServiceCostFault3.message__Specified(Index: Integer): boolean;
begin
  Result := Fmessage__Specified;
end;

procedure ServiceCostFault3.SetpickupDups(Index: Integer; const AArray_Of_city: Array_Of_city);
begin
  FpickupDups := AArray_Of_city;
  FpickupDups_Specified := True;
end;

function ServiceCostFault3.pickupDups_Specified(Index: Integer): boolean;
begin
  Result := FpickupDups_Specified;
end;

procedure cityInternRequest.SetcityId(Index: Integer; const AInt64: Int64);
begin
  FcityId := AInt64;
  FcityId_Specified := True;
end;

function cityInternRequest.cityId_Specified(Index: Integer): boolean;
begin
  Result := FcityId_Specified;
end;

procedure cityInternRequest.Setindex_(Index: Integer; const Astring: string);
begin
  Findex_ := Astring;
  Findex__Specified := True;
end;

function cityInternRequest.index__Specified(Index: Integer): boolean;
begin
  Result := Findex__Specified;
end;

procedure cityInternRequest.SetcityName(Index: Integer; const Astring: string);
begin
  FcityName := Astring;
  FcityName_Specified := True;
end;

function cityInternRequest.cityName_Specified(Index: Integer): boolean;
begin
  Result := FcityName_Specified;
end;

procedure cityInternRequest.SetregionCode(Index: Integer; const AInteger: Integer);
begin
  FregionCode := AInteger;
  FregionCode_Specified := True;
end;

function cityInternRequest.regionCode_Specified(Index: Integer): boolean;
begin
  Result := FregionCode_Specified;
end;

procedure cityInternRequest.SetcountryCode(Index: Integer; const Astring: string);
begin
  FcountryCode := Astring;
  FcountryCode_Specified := True;
end;

function cityInternRequest.countryCode_Specified(Index: Integer): boolean;
begin
  Result := FcountryCode_Specified;
end;

procedure cityInternRequest.SetcountryName(Index: Integer; const Astring: string);
begin
  FcountryName := Astring;
  FcountryName_Specified := True;
end;

function cityInternRequest.countryName_Specified(Index: Integer): boolean;
begin
  Result := FcountryName_Specified;
end;

procedure serviceCostInternational.SetserviceCode(Index: Integer; const Astring: string);
begin
  FserviceCode := Astring;
  FserviceCode_Specified := True;
end;

function serviceCostInternational.serviceCode_Specified(Index: Integer): boolean;
begin
  Result := FserviceCode_Specified;
end;

procedure serviceCostInternational.SetserviceName(Index: Integer; const Astring: string);
begin
  FserviceName := Astring;
  FserviceName_Specified := True;
end;

function serviceCostInternational.serviceName_Specified(Index: Integer): boolean;
begin
  Result := FserviceName_Specified;
end;

procedure serviceCostInternational.Setdays(Index: Integer; const Astring: string);
begin
  Fdays := Astring;
  Fdays_Specified := True;
end;

function serviceCostInternational.days_Specified(Index: Integer): boolean;
begin
  Result := Fdays_Specified;
end;

procedure serviceCostInternational.Setcost(Index: Integer; const ADouble: Double);
begin
  Fcost := ADouble;
  Fcost_Specified := True;
end;

function serviceCostInternational.cost_Specified(Index: Integer): boolean;
begin
  Result := Fcost_Specified;
end;

procedure serviceCostInternational.SetcostPin(Index: Integer; const ADouble: Double);
begin
  FcostPin := ADouble;
  FcostPin_Specified := True;
end;

function serviceCostInternational.costPin_Specified(Index: Integer): boolean;
begin
  Result := FcostPin_Specified;
end;

procedure serviceCostInternational.Setweight(Index: Integer; const ADouble: Double);
begin
  Fweight := ADouble;
  Fweight_Specified := True;
end;

function serviceCostInternational.weight_Specified(Index: Integer): boolean;
begin
  Result := Fweight_Specified;
end;

procedure serviceCostInternational.Setvolume(Index: Integer; const ADouble: Double);
begin
  Fvolume := ADouble;
  Fvolume_Specified := True;
end;

function serviceCostInternational.volume_Specified(Index: Integer): boolean;
begin
  Result := Fvolume_Specified;
end;

procedure parcelRequest.Setquantity(Index: Integer; const AInteger: Integer);
begin
  Fquantity := AInteger;
  Fquantity_Specified := True;
end;

function parcelRequest.quantity_Specified(Index: Integer): boolean;
begin
  Result := Fquantity_Specified;
end;

destructor serviceCostInternRequest.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(Fparcel)-1 do
    System.SysUtils.FreeAndNil(Fparcel[I]);
  System.SetLength(Fparcel, 0);
  System.SysUtils.FreeAndNil(Fauth);
  System.SysUtils.FreeAndNil(Fpickup);
  System.SysUtils.FreeAndNil(Fdelivery);
  inherited Destroy;
end;

procedure serviceCostInternRequest.Setvolume(Index: Integer; const ADouble: Double);
begin
  Fvolume := ADouble;
  Fvolume_Specified := True;
end;

function serviceCostInternRequest.volume_Specified(Index: Integer): boolean;
begin
  Result := Fvolume_Specified;
end;

procedure serviceCostInternRequest.SetdeclaredValue(Index: Integer; const ADouble: Double);
begin
  FdeclaredValue := ADouble;
  FdeclaredValue_Specified := True;
end;

function serviceCostInternRequest.declaredValue_Specified(Index: Integer): boolean;
begin
  Result := FdeclaredValue_Specified;
end;

procedure serviceCostInternRequest.Setinsurance(Index: Integer; const ABoolean: Boolean);
begin
  Finsurance := ABoolean;
  Finsurance_Specified := True;
end;

function serviceCostInternRequest.insurance_Specified(Index: Integer): boolean;
begin
  Result := Finsurance_Specified;
end;

procedure serviceCostInternRequest.Setparcel(Index: Integer; const AArray_Of_parcelRequest: Array_Of_parcelRequest);
begin
  Fparcel := AArray_Of_parcelRequest;
  Fparcel_Specified := True;
end;

function serviceCostInternRequest.parcel_Specified(Index: Integer): boolean;
begin
  Result := Fparcel_Specified;
end;

destructor serviceCostInternByParcelsRequest.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(Fparcel)-1 do
    System.SysUtils.FreeAndNil(Fparcel[I]);
  System.SetLength(Fparcel, 0);
  System.SysUtils.FreeAndNil(Fauth);
  System.SysUtils.FreeAndNil(Fpickup);
  System.SysUtils.FreeAndNil(Fdelivery);
  inherited Destroy;
end;

procedure serviceCostInternByParcelsRequest.SetdeclaredValue(Index: Integer; const ADouble: Double);
begin
  FdeclaredValue := ADouble;
  FdeclaredValue_Specified := True;
end;

function serviceCostInternByParcelsRequest.declaredValue_Specified(Index: Integer): boolean;
begin
  Result := FdeclaredValue_Specified;
end;

procedure serviceCostInternByParcelsRequest.Setinsurance(Index: Integer; const ABoolean: Boolean);
begin
  Finsurance := ABoolean;
  Finsurance_Specified := True;
end;

function serviceCostInternByParcelsRequest.insurance_Specified(Index: Integer): boolean;
begin
  Result := Finsurance_Specified;
end;

procedure cityIndex.SetcityId(Index: Integer; const AInt64: Int64);
begin
  FcityId := AInt64;
  FcityId_Specified := True;
end;

function cityIndex.cityId_Specified(Index: Integer): boolean;
begin
  Result := FcityId_Specified;
end;

procedure cityIndex.SetcountryCode(Index: Integer; const Astring: string);
begin
  FcountryCode := Astring;
  FcountryCode_Specified := True;
end;

function cityIndex.countryCode_Specified(Index: Integer): boolean;
begin
  Result := FcountryCode_Specified;
end;

procedure cityIndex.SetcountryName(Index: Integer; const Astring: string);
begin
  FcountryName := Astring;
  FcountryName_Specified := True;
end;

function cityIndex.countryName_Specified(Index: Integer): boolean;
begin
  Result := FcountryName_Specified;
end;

procedure cityIndex.SetregionCode(Index: Integer; const AInteger: Integer);
begin
  FregionCode := AInteger;
  FregionCode_Specified := True;
end;

function cityIndex.regionCode_Specified(Index: Integer): boolean;
begin
  Result := FregionCode_Specified;
end;

procedure cityIndex.SetregionName(Index: Integer; const Astring: string);
begin
  FregionName := Astring;
  FregionName_Specified := True;
end;

function cityIndex.regionName_Specified(Index: Integer): boolean;
begin
  Result := FregionName_Specified;
end;

procedure cityIndex.SetcityCode(Index: Integer; const Astring: string);
begin
  FcityCode := Astring;
  FcityCode_Specified := True;
end;

function cityIndex.cityCode_Specified(Index: Integer): boolean;
begin
  Result := FcityCode_Specified;
end;

procedure cityIndex.SetcityName(Index: Integer; const Astring: string);
begin
  FcityName := Astring;
  FcityName_Specified := True;
end;

function cityIndex.cityName_Specified(Index: Integer): boolean;
begin
  Result := FcityName_Specified;
end;

procedure cityIndex.Setabbreviation(Index: Integer; const Astring: string);
begin
  Fabbreviation := Astring;
  Fabbreviation_Specified := True;
end;

function cityIndex.abbreviation_Specified(Index: Integer): boolean;
begin
  Result := Fabbreviation_Specified;
end;

procedure cityIndex.SetindexMin(Index: Integer; const Astring: string);
begin
  FindexMin := Astring;
  FindexMin_Specified := True;
end;

function cityIndex.indexMin_Specified(Index: Integer): boolean;
begin
  Result := FindexMin_Specified;
end;

procedure cityIndex.SetindexMax(Index: Integer; const Astring: string);
begin
  FindexMax := Astring;
  FindexMax_Specified := True;
end;

function cityIndex.indexMax_Specified(Index: Integer): boolean;
begin
  Result := FindexMax_Specified;
end;

destructor ServiceCostFault22.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FdeliveryDups)-1 do
    System.SysUtils.FreeAndNil(FdeliveryDups[I]);
  System.SetLength(FdeliveryDups, 0);
  for I := 0 to System.Length(FpickupDups)-1 do
    System.SysUtils.FreeAndNil(FpickupDups[I]);
  System.SetLength(FpickupDups, 0);
  inherited Destroy;
end;

procedure ServiceCostFault22.Setcode(Index: Integer; const Astring: string);
begin
  Fcode := Astring;
  Fcode_Specified := True;
end;

function ServiceCostFault22.code_Specified(Index: Integer): boolean;
begin
  Result := Fcode_Specified;
end;

procedure ServiceCostFault22.SetdeliveryDups(Index: Integer; const AArray_Of_cityIndex: Array_Of_cityIndex);
begin
  FdeliveryDups := AArray_Of_cityIndex;
  FdeliveryDups_Specified := True;
end;

function ServiceCostFault22.deliveryDups_Specified(Index: Integer): boolean;
begin
  Result := FdeliveryDups_Specified;
end;

procedure ServiceCostFault22.Setmessage_(Index: Integer; const Astring: string);
begin
  Fmessage_ := Astring;
  Fmessage__Specified := True;
end;

function ServiceCostFault22.message__Specified(Index: Integer): boolean;
begin
  Result := Fmessage__Specified;
end;

procedure ServiceCostFault22.SetpickupDups(Index: Integer; const AArray_Of_cityIndex: Array_Of_cityIndex);
begin
  FpickupDups := AArray_Of_cityIndex;
  FpickupDups_Specified := True;
end;

function ServiceCostFault22.pickupDups_Specified(Index: Integer): boolean;
begin
  Result := FpickupDups_Specified;
end;

procedure cityInternationalRequest.SetcityName(Index: Integer; const Astring: string);
begin
  FcityName := Astring;
  FcityName_Specified := True;
end;

function cityInternationalRequest.cityName_Specified(Index: Integer): boolean;
begin
  Result := FcityName_Specified;
end;

procedure cityInternationalRequest.SetcityId(Index: Integer; const AInt64: Int64);
begin
  FcityId := AInt64;
  FcityId_Specified := True;
end;

function cityInternationalRequest.cityId_Specified(Index: Integer): boolean;
begin
  Result := FcityId_Specified;
end;

destructor serviceCostInternationalRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fauth);
  System.SysUtils.FreeAndNil(Fpickup);
  System.SysUtils.FreeAndNil(Fdelivery);
  inherited Destroy;
end;

procedure serviceCostInternationalRequest.SetdeclaredValue(Index: Integer; const ADouble: Double);
begin
  FdeclaredValue := ADouble;
  FdeclaredValue_Specified := True;
end;

function serviceCostInternationalRequest.declaredValue_Specified(Index: Integer): boolean;
begin
  Result := FdeclaredValue_Specified;
end;

procedure serviceCostInternationalRequest.Setinsurance(Index: Integer; const ABoolean: Boolean);
begin
  Finsurance := ABoolean;
  Finsurance_Specified := True;
end;

function serviceCostInternationalRequest.insurance_Specified(Index: Integer): boolean;
begin
  Result := Finsurance_Specified;
end;

procedure cityRequest.SetcityId(Index: Integer; const AInt64: Int64);
begin
  FcityId := AInt64;
  FcityId_Specified := True;
end;

function cityRequest.cityId_Specified(Index: Integer): boolean;
begin
  Result := FcityId_Specified;
end;

procedure cityRequest.Setindex_(Index: Integer; const Astring: string);
begin
  Findex_ := Astring;
  Findex__Specified := True;
end;

function cityRequest.index__Specified(Index: Integer): boolean;
begin
  Result := Findex__Specified;
end;

procedure cityRequest.SetcityName(Index: Integer; const Astring: string);
begin
  FcityName := Astring;
  FcityName_Specified := True;
end;

function cityRequest.cityName_Specified(Index: Integer): boolean;
begin
  Result := FcityName_Specified;
end;

procedure cityRequest.SetregionCode(Index: Integer; const AInteger: Integer);
begin
  FregionCode := AInteger;
  FregionCode_Specified := True;
end;

function cityRequest.regionCode_Specified(Index: Integer): boolean;
begin
  Result := FregionCode_Specified;
end;

procedure cityRequest.SetcountryCode(Index: Integer; const Astring: string);
begin
  FcountryCode := Astring;
  FcountryCode_Specified := True;
end;

function cityRequest.countryCode_Specified(Index: Integer): boolean;
begin
  Result := FcountryCode_Specified;
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

procedure city.SetcityName(Index: Integer; const Astring: string);
begin
  FcityName := Astring;
  FcityName_Specified := True;
end;

function city.cityName_Specified(Index: Integer): boolean;
begin
  Result := FcityName_Specified;
end;

procedure serviceCost.SetserviceCode(Index: Integer; const Astring: string);
begin
  FserviceCode := Astring;
  FserviceCode_Specified := True;
end;

function serviceCost.serviceCode_Specified(Index: Integer): boolean;
begin
  Result := FserviceCode_Specified;
end;

procedure serviceCost.SetserviceName(Index: Integer; const Astring: string);
begin
  FserviceName := Astring;
  FserviceName_Specified := True;
end;

function serviceCost.serviceName_Specified(Index: Integer): boolean;
begin
  Result := FserviceName_Specified;
end;

procedure serviceCost.Setcost(Index: Integer; const ADouble: Double);
begin
  Fcost := ADouble;
  Fcost_Specified := True;
end;

function serviceCost.cost_Specified(Index: Integer): boolean;
begin
  Result := Fcost_Specified;
end;

procedure serviceCost.Setdays(Index: Integer; const AInteger: Integer);
begin
  Fdays := AInteger;
  Fdays_Specified := True;
end;

function serviceCost.days_Specified(Index: Integer): boolean;
begin
  Result := Fdays_Specified;
end;

destructor serviceCostParcelsRequest.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(Fparcel)-1 do
    System.SysUtils.FreeAndNil(Fparcel[I]);
  System.SetLength(Fparcel, 0);
  System.SysUtils.FreeAndNil(Fauth);
  System.SysUtils.FreeAndNil(Fpickup);
  System.SysUtils.FreeAndNil(Fdelivery);
  System.SysUtils.FreeAndNil(FpickupDate);
  inherited Destroy;
end;

procedure serviceCostParcelsRequest.SetserviceCode(Index: Integer; const Astring: string);
begin
  FserviceCode := Astring;
  FserviceCode_Specified := True;
end;

function serviceCostParcelsRequest.serviceCode_Specified(Index: Integer): boolean;
begin
  Result := FserviceCode_Specified;
end;

procedure serviceCostParcelsRequest.SetpickupDate(Index: Integer; const ATXSDate: TXSDate);
begin
  FpickupDate := ATXSDate;
  FpickupDate_Specified := True;
end;

function serviceCostParcelsRequest.pickupDate_Specified(Index: Integer): boolean;
begin
  Result := FpickupDate_Specified;
end;

procedure serviceCostParcelsRequest.SetmaxDays(Index: Integer; const AInteger: Integer);
begin
  FmaxDays := AInteger;
  FmaxDays_Specified := True;
end;

function serviceCostParcelsRequest.maxDays_Specified(Index: Integer): boolean;
begin
  Result := FmaxDays_Specified;
end;

procedure serviceCostParcelsRequest.SetmaxCost(Index: Integer; const ADouble: Double);
begin
  FmaxCost := ADouble;
  FmaxCost_Specified := True;
end;

function serviceCostParcelsRequest.maxCost_Specified(Index: Integer): boolean;
begin
  Result := FmaxCost_Specified;
end;

procedure serviceCostParcelsRequest.SetdeclaredValue(Index: Integer; const ADouble: Double);
begin
  FdeclaredValue := ADouble;
  FdeclaredValue_Specified := True;
end;

function serviceCostParcelsRequest.declaredValue_Specified(Index: Integer): boolean;
begin
  Result := FdeclaredValue_Specified;
end;

destructor serviceCostRequest.Destroy;
begin
  System.SysUtils.FreeAndNil(Fauth);
  System.SysUtils.FreeAndNil(Fpickup);
  System.SysUtils.FreeAndNil(Fdelivery);
  System.SysUtils.FreeAndNil(FpickupDate);
  inherited Destroy;
end;

procedure serviceCostRequest.Setvolume(Index: Integer; const ADouble: Double);
begin
  Fvolume := ADouble;
  Fvolume_Specified := True;
end;

function serviceCostRequest.volume_Specified(Index: Integer): boolean;
begin
  Result := Fvolume_Specified;
end;

procedure serviceCostRequest.SetserviceCode(Index: Integer; const Astring: string);
begin
  FserviceCode := Astring;
  FserviceCode_Specified := True;
end;

function serviceCostRequest.serviceCode_Specified(Index: Integer): boolean;
begin
  Result := FserviceCode_Specified;
end;

procedure serviceCostRequest.SetpickupDate(Index: Integer; const ATXSDate: TXSDate);
begin
  FpickupDate := ATXSDate;
  FpickupDate_Specified := True;
end;

function serviceCostRequest.pickupDate_Specified(Index: Integer): boolean;
begin
  Result := FpickupDate_Specified;
end;

procedure serviceCostRequest.SetmaxDays(Index: Integer; const AInteger: Integer);
begin
  FmaxDays := AInteger;
  FmaxDays_Specified := True;
end;

function serviceCostRequest.maxDays_Specified(Index: Integer): boolean;
begin
  Result := FmaxDays_Specified;
end;

procedure serviceCostRequest.SetmaxCost(Index: Integer; const ADouble: Double);
begin
  FmaxCost := ADouble;
  FmaxCost_Specified := True;
end;

function serviceCostRequest.maxCost_Specified(Index: Integer): boolean;
begin
  Result := FmaxCost_Specified;
end;

procedure serviceCostRequest.SetdeclaredValue(Index: Integer; const ADouble: Double);
begin
  FdeclaredValue := ADouble;
  FdeclaredValue_Specified := True;
end;

function serviceCostRequest.declaredValue_Specified(Index: Integer): boolean;
begin
  Result := FdeclaredValue_Specified;
end;

initialization
  { DPDCalculator }
  InvRegistry.RegisterInterface(TypeInfo(DPDCalculator), 'http://dpd.ru/ws/calculator/2012-03-20', 'UTF-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(DPDCalculator), '');
  InvRegistry.RegisterInvokeOptions(TypeInfo(DPDCalculator), ioDocument);
  { DPDCalculator.getServiceCost }
  InvRegistry.RegisterMethodInfo(TypeInfo(DPDCalculator), 'getServiceCost', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNBD or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(DPDCalculator), 'getServiceCost', 'request', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(DPDCalculator), 'getServiceCost', 'return', '',
                                '[ArrayItemName="return"]', IS_UNBD or IS_UNQL);
  { DPDCalculator.getServiceCostByParcels }
  InvRegistry.RegisterMethodInfo(TypeInfo(DPDCalculator), 'getServiceCostByParcels', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNBD or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(DPDCalculator), 'getServiceCostByParcels', 'request', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(DPDCalculator), 'getServiceCostByParcels', 'return', '',
                                '[ArrayItemName="return"]', IS_UNBD or IS_UNQL);
  { DPDCalculator.getServiceCostByParcels2 }
  InvRegistry.RegisterMethodInfo(TypeInfo(DPDCalculator), 'getServiceCostByParcels2', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNBD or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(DPDCalculator), 'getServiceCostByParcels2', 'request', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(DPDCalculator), 'getServiceCostByParcels2', 'return', '',
                                '[ArrayItemName="return"]', IS_UNBD or IS_UNQL);
  { DPDCalculator.getServiceCostInternational }
  InvRegistry.RegisterMethodInfo(TypeInfo(DPDCalculator), 'getServiceCostInternational', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNBD or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(DPDCalculator), 'getServiceCostInternational', 'request', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(DPDCalculator), 'getServiceCostInternational', 'return', '',
                                '[ArrayItemName="return"]', IS_UNBD or IS_UNQL);
  { DPDCalculator.getServiceCostIntern }
  InvRegistry.RegisterMethodInfo(TypeInfo(DPDCalculator), 'getServiceCostIntern', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNBD or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(DPDCalculator), 'getServiceCostIntern', 'request', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(DPDCalculator), 'getServiceCostIntern', 'return', '',
                                '[ArrayItemName="return"]', IS_UNBD or IS_UNQL);
  { DPDCalculator.getServiceCostInternByParcels }
  InvRegistry.RegisterMethodInfo(TypeInfo(DPDCalculator), 'getServiceCostInternByParcels', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNBD or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(DPDCalculator), 'getServiceCostInternByParcels', 'request', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(DPDCalculator), 'getServiceCostInternByParcels', 'return', '',
                                '[ArrayItemName="return"]', IS_UNBD or IS_UNQL);
  { DPDCalculator.getServiceCost2 }
  InvRegistry.RegisterMethodInfo(TypeInfo(DPDCalculator), 'getServiceCost2', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNBD or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(DPDCalculator), 'getServiceCost2', 'request', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(DPDCalculator), 'getServiceCost2', 'return', '',
                                '[ArrayItemName="return"]', IS_UNBD or IS_UNQL);
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_cityIndex), 'http://dpd.ru/ws/calculator/2012-03-20', 'Array_Of_cityIndex');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_city), 'http://dpd.ru/ws/calculator/2012-03-20', 'Array_Of_city');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_parcelRequest), 'http://dpd.ru/ws/calculator/2012-03-20', 'Array_Of_parcelRequest');
  RemClassRegistry.RegisterXSClass(ServiceCostFault2, 'http://dpd.ru/ws/calculator/2012-03-20', 'ServiceCostFault2');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(ServiceCostFault2), 'message_', '[ExtName="message"]');
  RemClassRegistry.RegisterXSClass(ServiceCostFault, 'http://dpd.ru/ws/calculator/2012-03-20', 'ServiceCostFault');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(ServiceCostFault), 'message_', '[ExtName="message"]');
  RemClassRegistry.RegisterXSClass(ServiceCostFault3, 'http://dpd.ru/ws/calculator/2012-03-20', 'ServiceCostFault3', 'ServiceCostFault');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(ServiceCostFault3), 'message_', '[ExtName="message"]');
  RemClassRegistry.RegisterXSInfo(TypeInfo(getServiceCostInternResponse), 'http://dpd.ru/ws/calculator/2012-03-20', 'getServiceCostInternResponse');
  RemClassRegistry.RegisterXSClass(auth, 'http://dpd.ru/ws/calculator/2012-03-20', 'auth');
  RemClassRegistry.RegisterXSClass(cityInternRequest, 'http://dpd.ru/ws/calculator/2012-03-20', 'cityInternRequest');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(cityInternRequest), 'index_', '[ExtName="index"]');
  RemClassRegistry.RegisterXSClass(serviceCostInternational, 'http://dpd.ru/ws/calculator/2012-03-20', 'serviceCostInternational');
  RemClassRegistry.RegisterXSClass(parcelRequest, 'http://dpd.ru/ws/calculator/2012-03-20', 'parcelRequest');
  RemClassRegistry.RegisterXSClass(serviceCostInternRequest, 'http://dpd.ru/ws/calculator/2012-03-20', 'serviceCostInternRequest');
  RemClassRegistry.RegisterXSClass(serviceCostInternByParcelsRequest, 'http://dpd.ru/ws/calculator/2012-03-20', 'serviceCostInternByParcelsRequest');
  RemClassRegistry.RegisterXSClass(cityIndex, 'http://dpd.ru/ws/calculator/2012-03-20', 'cityIndex');
  RemClassRegistry.RegisterXSClass(ServiceCostFault22, 'http://dpd.ru/ws/calculator/2012-03-20', 'ServiceCostFault22', 'ServiceCostFault2');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(ServiceCostFault22), 'message_', '[ExtName="message"]');
  RemClassRegistry.RegisterXSClass(cityInternationalRequest, 'http://dpd.ru/ws/calculator/2012-03-20', 'cityInternationalRequest');
  RemClassRegistry.RegisterXSClass(serviceCostInternationalRequest, 'http://dpd.ru/ws/calculator/2012-03-20', 'serviceCostInternationalRequest');
  RemClassRegistry.RegisterXSClass(cityRequest, 'http://dpd.ru/ws/calculator/2012-03-20', 'cityRequest');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(cityRequest), 'index_', '[ExtName="index"]');
  RemClassRegistry.RegisterXSClass(city, 'http://dpd.ru/ws/calculator/2012-03-20', 'city');
  RemClassRegistry.RegisterXSClass(serviceCost, 'http://dpd.ru/ws/calculator/2012-03-20', 'serviceCost');
  RemClassRegistry.RegisterXSInfo(TypeInfo(getServiceCostByParcels2Response), 'http://dpd.ru/ws/calculator/2012-03-20', 'getServiceCostByParcels2Response');
  RemClassRegistry.RegisterXSClass(serviceCostParcelsRequest, 'http://dpd.ru/ws/calculator/2012-03-20', 'serviceCostParcelsRequest');
  RemClassRegistry.RegisterXSClass(serviceCostRequest, 'http://dpd.ru/ws/calculator/2012-03-20', 'serviceCostRequest');

end.