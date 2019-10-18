unit tReportData;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MSAcc,
  FireDAC.Phys.MSAccDef, FireDAC.VCLUI.Wait, FireDAC.Phys.PGDef,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, FireDAC.Phys.PG,
  FireDAC.Phys.ODBCBase, frxClass, frxDBSet, frxTableObject,
  frxExportBaseDialog, frxExportPDF, FireDAC.Phys.FB, FireDAC.Phys.FBDef,
  FireDAC.Phys.IBBase, Forms;

type
  TDataModule2 = class(TDataModule)
    FDShopConnection: TFDConnection;
    FDPhysMSAccessDriverLink1: TFDPhysMSAccessDriverLink;
    FDPhysPgDriverLink1: TFDPhysPgDriverLink;
    FDQProductsTranslated: TFDQuery;
    FDTCustomers: TFDTable;
    FDTGeolocation: TFDTable;
    FDTOrderItems: TFDTable;
    FDTOrderPayments: TFDTable;
    FDTOrderReviews: TFDTable;
    FDTOrders: TFDTable;
    FDTSellers: TFDTable;
    frxDBProducts: TfrxDBDataset;
    frxDCustOrders: TfrxDBDataset;
    frxDTCustomers: TfrxDBDataset;
    frxDTOrders: TfrxDBDataset;
    frxDTOrderItems: TfrxDBDataset;
    FDTable1: TFDTable;
    CustomersDS: TDataSource;
    OrdersDS: TDataSource;
    FDCustOrders: TFDQuery;
    FDCustGeolocation: TFDQuery;
    DataSource1: TDataSource;
    frxCustGeolocation: TfrxDBDataset;
    FDOrdersProd: TFDQuery;
    frxDBOrdersProd: TfrxDBDataset;
    frxReportTableObject1: TfrxReportTableObject;
    frxPDFExport1: TfrxPDFExport;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule2: TDataModule2;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDataModule2.DataModuleCreate(Sender: TObject);
begin
  FDShopConnection.Params.Database := ExtractFilePath(Application.ExeName) + 'NEWDB.FDB';
  FDShopConnection.Connected := True;
end;

end.
