unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, IdHTTP, IdIOHandler,
  IdIOHandlerSocket, IdIOHandlerStack, Soap.InvokeRegistry,
  System.Net.URLClient, Soap.Rio, Soap.SOAPHTTPClient, geography2, calculator2, common,
  Vcl.Samples.Spin, Vcl.ComCtrls, Vcl.ExtCtrls, Soap.XSBuiltIns;

type
  TForm_main = class(TForm)
    Panel_cmd: TPanel;
    Panel_tabs: TPanel;
    StatusBar: TStatusBar;
    PageControl: TPageControl;
    TabSheet_PVP: TTabSheet;
    Label_BaseURL: TLabel;
    Label_ClientID: TLabel;
    Label_ApiKey: TLabel;
    Edit_baseurl: TEdit;
    SpinEdit_clientid: TSpinEdit;
    Edit_apikey: TEdit;
    Panel_geography2: TPanel;
    Label_countrycode: TLabel;
    ComboBox_countrycode: TComboBox;
    Button_getCitiesCashPay: TButton;
    Edit_geography2wsdl: TEdit;
    Label_geography2wsdl: TLabel;
    Memo_geography2: TMemo;
    Label_regioncode: TLabel;
    Edit_citycode: TEdit;
    Label_citycode: TLabel;
    Label_cityname: TLabel;
    Edit_cityname: TEdit;
    Button_getParcelShops: TButton;
    Edit_regioncode: TEdit;
    TabSheet_cost: TTabSheet;
    Panel_calculator2: TPanel;
    Memo_calculator2: TMemo;
    Label_calculator2wsdl: TLabel;
    Edit_calculator2wsdl: TEdit;
    Label_calculator2_countrycode: TLabel;
    ComboBox_calculator2_from_countrycode: TComboBox;
    Label_calculator2_from_regioncode: TLabel;
    Label_calculator2_from_citycode: TLabel;
    Label_calculator2_from_cityname: TLabel;
    Edit_calculator2_from_cityname: TEdit;
    Button_getServiceCost2: TButton;
    Label_calculator2from: TLabel;
    Label_calculator2_from_index: TLabel;
    Edit_calculator2_from_index: TEdit;
    Label1: TLabel;
    Label_calculator2_to_countrycode: TLabel;
    ComboBox_calculator2_to_countrycode: TComboBox;
    Label_calculator2_to_citycode: TLabel;
    Label__calculator2_to_regioncode: TLabel;
    Label__calculator2_to_cityname: TLabel;
    Edit_calculator2_to_cityname: TEdit;
    Label_calculator2_to_index: TLabel;
    Edit_calculator2_to_index: TEdit;
    SpinEdit_calculator2_from_cityid: TSpinEdit;
    SpinEdit_calculator2_from_regioncode: TSpinEdit;
    SpinEdit_calculator2_to_regioncode: TSpinEdit;
    CheckBox_self_from: TCheckBox;
    CheckBox_self_to: TCheckBox;
    SpinEdit_calculator2_weight: TSpinEdit;
    Label_calculator2_weight: TLabel;
    Label_calculator2_vol: TLabel;
    SpinEdit_calculator2_vol: TSpinEdit;
    Label_calculator2_slist: TLabel;
    Edit_calculator2_slist: TEdit;
    SpinEdit_calculator2_to_cityid: TSpinEdit;
    procedure Button_getCitiesCashPayClick(Sender: TObject);
    procedure Button_getParcelShopsClick(Sender: TObject);
    function AddressToString (addr : address) : String;
    procedure Button_getServiceCost2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_main: TForm_main;

implementation

{$R *.dfm}


procedure TForm_main.Button_getCitiesCashPayClick(Sender: TObject);
var
  Geo_HTTPRIO: THTTPRIO;
  cur_auth : auth;
  service_addr, responce_string : String;
  req : dpdCitiesCashPayRequest;
  getCitiesCashPay_Result : getCitiesCashPayResponse;
  responce_length, i : Uint;
begin
  // ????????? ????? ???????
  service_addr := Edit_baseurl.Text + Edit_geography2wsdl.Text;
  // ??????? ????????? ??????????? ? ???????
  cur_auth := auth.Create;
  req := dpdCitiesCashPayRequest.Create;
  cur_auth.clientNumber := SpinEdit_clientid.Value;
  cur_auth.clientKey := Edit_apikey.Text;
  // ?????? ????????? ???????
  req.auth := cur_auth;
  req.countryCode := ComboBox_countrycode.Text;
  // ???????? ?????? ?????
  getCitiesCashPay_Result := GetDPDGeography2(true,service_addr,Geo_HTTPRIO).getCitiesCashPay(req);
  // ?????? ?????????? ????? ? ??????
  Responce_length := Length(getCitiesCashPay_Result);
  StatusBar.SimpleText := '????????: ' + IntToStr(Responce_length) + ' ???????????';
  // ????????? ?????
  if responce_length > 0 then
    begin
      Memo_geography2.Lines.Clear;
      Memo_geography2.Visible := False;
      for i := 0 to responce_length-1 do
        begin
          responce_string := getCitiesCashPay_Result[i].countryCode;
          responce_string := responce_string + '|' + IntToStr(getCitiesCashPay_Result[i].cityId);
          responce_string := responce_string + '|' + getCitiesCashPay_Result[i].countryCode;
          responce_string := responce_string + '|' + getCitiesCashPay_Result[i].countryName;
          responce_string := responce_string + '|' + IntToStr(getCitiesCashPay_Result[i].regionCode);
          responce_string := responce_string + '|' + getCitiesCashPay_Result[i].regionName;
          responce_string := responce_string + '|' + getCitiesCashPay_Result[i].cityCode;
          responce_string := responce_string + '|' + getCitiesCashPay_Result[i].cityName;
          responce_string := responce_string + '|' + getCitiesCashPay_Result[i].abbreviation;
          responce_string := responce_string + '|' + getCitiesCashPay_Result[i].indexMin;
          responce_string := responce_string + '|' + getCitiesCashPay_Result[i].indexMax;
          Memo_geography2.Lines.Append(responce_string);
          StatusBar.SimpleText := '??????????: ' + IntToStr(i) + ' ?? ' + IntToStr(Responce_length) + ' ???????????';
        end;
      Memo_geography2.Visible := True;
    end;
end;


procedure TForm_main.Button_getParcelShopsClick(Sender: TObject);
var
  Geo_HTTPRIO: THTTPRIO;
  cur_auth : auth;
  service_addr, responce_string : String;
  req : dpdParcelShopRequest;
  getParcelShops_Result : dpdParcelShops;
  responce_length, i : Uint;
begin
  service_addr := Edit_baseurl.Text + Edit_geography2wsdl.Text;
  cur_auth := auth.Create;
  req := dpdParcelShopRequest.Create;
  cur_auth.clientNumber := SpinEdit_clientid.Value;
  cur_auth.clientKey := Edit_apikey.Text;
  req.auth := cur_auth;
  req.countryCode := ComboBox_countrycode.Text;
  req.regionCode := Edit_regioncode.Text;
  req.cityCode := Edit_citycode.Text;
  req.cityName := Edit_cityname.Text;
  getParcelShops_Result := GetDPDGeography2(true,service_addr,Geo_HTTPRIO).getParcelShops(req);
  Responce_length := Length(getParcelShops_Result);
  StatusBar.SimpleText := '????????: ' + IntToStr(Responce_length) + ' ???????????';
  if responce_length > 0 then
    begin
      Memo_geography2.Lines.Clear;
      Memo_geography2.Visible := False;
      for i := 0 to responce_length-1 do
        begin
          responce_string := getParcelShops_Result[i].code;
          responce_string := responce_string + '|' + getParcelShops_Result[i].parcelShopType;
          responce_string := responce_string + '|' + getParcelShops_Result[i].state;
          responce_string := responce_string + '|' + AddressToString(getParcelShops_Result[i].address);
          responce_string := responce_string + '|' + getParcelShops_Result[i].brand;
          responce_string := responce_string + '|' + getParcelShops_Result[i].metro;
          responce_string := responce_string + '|' + getParcelShops_Result[i].clientDepartmentNum;
          responce_string := responce_string + '|lat=' + getParcelShops_Result[i].geoCoordinates.latitude.DecimalString + ' lon=' + getParcelShops_Result[i].geoCoordinates.longitude.DecimalString;
//          responce_string := responce_string + '|maxShipmentWeight=' + getParcelShops_Result[i].limits.maxShipmentWeight.DecimalString + ' maxWeight=' + getParcelShops_Result[i].limits.maxWeight.DecimalString + ' maxLength=' + getParcelShops_Result[i].limits.maxLength.DecimalString + ' maxWidth=' + getParcelShops_Result[i].limits.maxWidth.DecimalString + ' maxHeight=' + getParcelShops_Result[i].limits.maxHeight.DecimalString + ' dimensionSum=' + getParcelShops_Result[i].limits.dimensionSum.DecimalString;
          Memo_geography2.Lines.Append(responce_string);
          StatusBar.SimpleText := '??????????: ' + IntToStr(i+1) + ' ?? ' + IntToStr(Responce_length) + ' ???????????';
        end;
      Memo_geography2.Visible := True;
    end;
end;


procedure TForm_main.Button_getServiceCost2Click(Sender: TObject);
var
  Geo_HTTPRIO: THTTPRIO;
  cur_auth : auth;
  service_addr, responce_string : String;
  req : serviceCostRequest;
  getServiceCostByParcels2Response_Result : getServiceCostByParcels2Response;
  responce_length, i : Uint;
  city_from, city_to : cityRequest;
begin
  service_addr := Edit_baseurl.Text + Edit_calculator2wsdl.Text;
  cur_auth := auth.Create;
  req := serviceCostRequest.Create;
  req.pickup := cityRequest.Create;
  req.delivery := cityRequest.Create;
  city_from := cityRequest.Create;
  city_to := cityRequest.Create;
  cur_auth.clientNumber := SpinEdit_clientid.Value;
  cur_auth.clientKey := Edit_apikey.Text;
  req.auth := cur_auth;
  if SpinEdit_calculator2_from_cityid.Value > 0 then city_from.cityId := SpinEdit_calculator2_from_cityid.Value;
  city_from.index_ := Edit_calculator2_from_index.Text;
  city_from.cityName := Edit_calculator2_from_cityname.Text;
  if SpinEdit_calculator2_from_regioncode.Value > 0 then city_from.regionCode := SpinEdit_calculator2_from_regioncode.Value;
  city_from.countryCode := ComboBox_calculator2_from_countrycode.Text;
  if SpinEdit_calculator2_to_cityid.Value > 0 then city_to.cityId := SpinEdit_calculator2_to_cityid.Value;
  city_to.index_ := Edit_calculator2_to_index.Text;
  city_to.cityName := Edit_calculator2_to_cityname.Text;
  if SpinEdit_calculator2_to_regioncode.Value > 0 then city_to.regionCode := SpinEdit_calculator2_to_regioncode.Value;
  city_to.countryCode := ComboBox_calculator2_to_countrycode.Text;
  req.pickup := city_from;
  req.delivery := city_to;
  req.selfPickup := CheckBox_self_from.Checked;
  req.selfDelivery := CheckBox_self_to.Checked;
  req.weight := SpinEdit_calculator2_weight.Value;
  req.volume := SpinEdit_calculator2_vol.Value;
  req.serviceCode := Edit_calculator2_slist.Text;
  getServiceCostByParcels2Response_Result := GetDPDCalculator(true,service_addr,Geo_HTTPRIO).getServiceCost2(req);
  Responce_length := Length(getServiceCostByParcels2Response_Result);

  StatusBar.SimpleText := '????????: ' + IntToStr(Responce_length) + ' ???????????';
  if responce_length > 0 then
    begin
      Memo_calculator2.Lines.Clear;
      Memo_calculator2.Visible := False;
      for i := 0 to responce_length-1 do
        begin
          responce_string := getServiceCostByParcels2Response_Result[i].serviceCode;
          responce_string := responce_string + '|' + getServiceCostByParcels2Response_Result[i].serviceName;
          responce_string := responce_string + '|' + FloatToStr(getServiceCostByParcels2Response_Result[i].cost);
          responce_string := responce_string + '|' + IntToStr(getServiceCostByParcels2Response_Result[i].days);
          Memo_calculator2.Lines.Append(responce_string);
          StatusBar.SimpleText := '??????????: ' + IntToStr(i+1) + ' ?? ' + IntToStr(Responce_length) + ' ???????????';
        end;
      Memo_calculator2.Visible := True;
    end;
end;

function TForm_main.AddressToString (addr : address) : String;
var
  resl : String;
begin
  resl := IntToStr (Addr.cityId);
  resl := resl + ',' + addr.countryCode;
  resl := resl + ',' + addr.regionCode;
  resl := resl + ',' + addr.regionName;
  resl := resl + ',' + addr.cityCode;
  resl := resl + ',' + addr.cityName;
  resl := resl + ',' + addr.index_;
  resl := resl + ',' + addr.street;
  resl := resl + ',' + addr.streetAbbr;
  resl := resl + ',' + addr.houseNo;
  resl := resl + ',' + addr.building;
  resl := resl + ',' + addr.structure;
  resl := resl + ',' + addr.ownership;
  resl := resl + ',' + addr.descript;
  result := resl;
end;

end.


