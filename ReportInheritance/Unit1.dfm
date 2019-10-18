object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 161
  ClientWidth = 253
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  DesignSize = (
    253
    161)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 8
    Width = 45
    Height = 13
    Caption = 'Reports :'
  end
  object Button2: TButton
    Left = 16
    Top = 119
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = 'Design Report'
    TabOrder = 0
    OnClick = Button2Click
    ExplicitTop = 128
  end
  object Button1: TButton
    Left = 160
    Top = 119
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Show Report'
    TabOrder = 1
    OnClick = Button1Click
    ExplicitLeft = 136
    ExplicitTop = 128
  end
  object ListBox1: TListBox
    Left = 16
    Top = 25
    Width = 219
    Height = 88
    Anchors = [akLeft, akTop, akRight, akBottom]
    ItemHeight = 13
    TabOrder = 2
    OnClick = ListBox1Click
    OnKeyPress = ListBox1KeyPress
    ExplicitWidth = 195
    ExplicitHeight = 97
  end
  object frxReport1: TfrxReport
    Version = '6.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43665.639359143520000000
    ReportOptions.LastChange = 43665.639359143520000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 40
    Top = 224
    Datasets = <>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object CellularText1: TfrxCellularText
        AllowVectorExport = True
        Left = 28.000000000000000000
        Top = 40.000000000000000000
        Width = 115.000000000000000000
        Height = 69.000000000000000000
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
      end
    end
  end
  object frxDesigner1: TfrxDesigner
    DefaultScriptLanguage = 'PascalScript'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -13
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultLeftMargin = 10.000000000000000000
    DefaultRightMargin = 10.000000000000000000
    DefaultTopMargin = 10.000000000000000000
    DefaultBottomMargin = 10.000000000000000000
    DefaultPaperSize = 9
    DefaultOrientation = poPortrait
    GradientEnd = 11982554
    GradientStart = clWindow
    TemplatesExt = 'fr3'
    Restrictions = []
    RTLLanguage = False
    MemoParentFont = False
    Left = 160
    Top = 168
  end
  object frxGaugeObject1: TfrxGaugeObject
    Left = 160
    Top = 224
  end
  object frxMapObject1: TfrxMapObject
    Left = 104
    Top = 224
  end
  object frxFDComponents1: TfrxFDComponents
    DefaultDatabase = DataModule2.FDShopConnection
    Left = 104
    Top = 168
  end
  object frxHTMLExport1: TfrxHTMLExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    OpenAfterExport = False
    FixedWidth = True
    Background = False
    Centered = False
    EmptyLines = True
    Print = False
    PictureType = gpPNG
    Left = 40
    Top = 168
  end
  object frxReportCellularTextObject1: TfrxReportCellularTextObject
    Left = 96
    Top = 288
  end
end
