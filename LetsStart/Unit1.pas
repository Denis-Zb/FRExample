unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MSAcc,
  FireDAC.Phys.MSAccDef, FireDAC.VCLUI.Wait, FireDAC.Phys.PGDef,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Phys.PG,
  FireDAC.Phys.ODBCBase, tReportData, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Grids,
  Vcl.DBGrids, Data.Win.ADODB, frxClass, frxDesgn, frxMap, frxGaugeView,
  frxFDComponents, fs_iclassesrtti, frxExportBaseDialog, frxExportHTML,
  frxCellularTextObject, System.IOUtils, Types;

type
  TForm1 = class(TForm)
    Button2: TButton;
    frxReport1: TfrxReport;
    frxDesigner1: TfrxDesigner;
    frxGaugeObject1: TfrxGaugeObject;
    frxMapObject1: TfrxMapObject;
    frxFDComponents1: TfrxFDComponents;
    frxHTMLExport1: TfrxHTMLExport;
    Button1: TButton;
    frxReportCellularTextObject1: TfrxReportCellularTextObject;
    ListBox1: TListBox;
    Label1: TLabel;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
    procedure ListBox1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  frxReport1.ShowReport();
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  frxReport1.DesignReport();
end;


procedure TForm1.FormShow(Sender: TObject);
var
  FList: TStringDynArray;
  i: Integer;
begin
  ListBox1.Items.Clear;
  FList := TDirectory.GetFiles(ExtractFilePath(Application.ExeName), '*.fr3');
  ListBox1.Items.BeginUpdate;
  try
    for I := Low(FList) to High(FList) do
      ListBox1.Items.Add(ExtractFileName(FList[i]));
  finally
    ListBox1.Items.EndUpdate;
  end;
end;

procedure TForm1.ListBox1Click(Sender: TObject);
begin
  if ListBox1.ItemIndex >= 0 then
    frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName) + ListBox1.Items[ListBox1.ItemIndex]);
end;

procedure TForm1.ListBox1KeyPress(Sender: TObject; var Key: Char);
begin
  ListBox1Click(nil);
end;

end.
