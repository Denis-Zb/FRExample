object DataModule2: TDataModule2
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 466
  Width = 532
  object FDShopConnection: TFDConnection
    Params.Strings = (
      'Database=J:\NEWDB.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'DriverID=FB'
      'POOL_MaximumItems=150')
    FetchOptions.AssignedValues = [evRowsetSize, evUnidirectional]
    LoginPrompt = False
    Left = 40
    Top = 16
  end
  object FDPhysMSAccessDriverLink1: TFDPhysMSAccessDriverLink
    Left = 120
    Top = 16
  end
  object FDPhysPgDriverLink1: TFDPhysPgDriverLink
    Left = 180
    Top = 16
  end
  object FDQProductsTranslated: TFDQuery
    Connection = FDShopConnection
    SQL.Strings = (
      'select * from EGoods order by query')
    Left = 120
    Top = 152
  end
  object FDTCustomers: TFDTable
    IndexFieldNames = 'CUSTOMER_ID'
    Connection = FDShopConnection
    UpdateOptions.UpdateTableName = 'OLISTCUSTOMERS'
    TableName = 'OLISTCUSTOMERS'
    Left = 40
    Top = 152
  end
  object FDTGeolocation: TFDTable
    Connection = FDShopConnection
    UpdateOptions.UpdateTableName = 'olistGeolocation'
    TableName = 'olistGeolocation'
    Left = 40
    Top = 88
  end
  object FDTOrderItems: TFDTable
    IndexFieldNames = 'order_id'
    MasterSource = OrdersDS
    MasterFields = 'order_id'
    Connection = FDShopConnection
    UpdateOptions.UpdateTableName = 'olistOrderItems'
    TableName = 'olistOrderItems'
    Left = 32
    Top = 224
  end
  object FDTOrderPayments: TFDTable
    Connection = FDShopConnection
    UpdateOptions.UpdateTableName = 'olistOrderPayments'
    TableName = 'olistOrderPayments'
    Left = 192
    Top = 152
  end
  object FDTOrderReviews: TFDTable
    Connection = FDShopConnection
    UpdateOptions.UpdateTableName = 'olistOrderReviews'
    TableName = 'olistOrderReviews'
    Left = 120
    Top = 88
  end
  object FDTOrders: TFDTable
    IndexFieldNames = 'customer_id'
    MasterSource = CustomersDS
    MasterFields = 'customer_id'
    Connection = FDShopConnection
    UpdateOptions.UpdateTableName = 'olistOrders'
    TableName = 'olistOrders'
    Left = 192
    Top = 88
  end
  object FDTSellers: TFDTable
    Connection = FDShopConnection
    UpdateOptions.UpdateTableName = 'olistSellers'
    TableName = 'olistSellers'
    Left = 200
    Top = 224
  end
  object frxDBProducts: TfrxDBDataset
    UserName = 'frxDBProducts'
    CloseDataSource = False
    DataSet = FDQProductsTranslated
    BCDToCurrency = False
    Left = 32
    Top = 376
  end
  object frxDCustOrders: TfrxDBDataset
    UserName = 'frxDCustOrders'
    CloseDataSource = False
    DataSet = FDCustOrders
    BCDToCurrency = False
    Left = 272
    Top = 376
  end
  object frxDTCustomers: TfrxDBDataset
    UserName = 'frxDTCustomers'
    CloseDataSource = False
    DataSet = FDTCustomers
    BCDToCurrency = False
    Left = 160
    Top = 384
  end
  object frxDTOrders: TfrxDBDataset
    UserName = 'frxDTOrders'
    CloseDataSource = False
    DataSet = FDTOrders
    BCDToCurrency = False
    Left = 352
    Top = 320
  end
  object frxDTOrderItems: TfrxDBDataset
    UserName = 'frxDTOrderItems'
    CloseDataSource = False
    DataSet = FDTOrderItems
    BCDToCurrency = False
    Left = 408
    Top = 376
  end
  object FDTable1: TFDTable
    Connection = FDShopConnection
    Left = 312
    Top = 104
  end
  object CustomersDS: TDataSource
    DataSet = FDTCustomers
    Left = 320
    Top = 192
  end
  object OrdersDS: TDataSource
    DataSet = FDTOrders
    Left = 176
    Top = 296
  end
  object FDCustOrders: TFDQuery
    Connection = FDShopConnection
    SQL.Strings = (
      'select * from olistCustomers '
      'INNER JOIN (olistOrders INNER JOIN '
      
        '(olistOrderItems INNER JOIN Egoods on olistOrderItems.product_id' +
        ' = Egoods.product_id) on olistOrders.order_id = olistOrderItems.' +
        'order_id)'
      
        'ON olistCustomers.customer_id = olistOrders.customer_id order by' +
        ' olistCustomers.customer_id, olistOrders.order_id'
      '')
    Left = 32
    Top = 296
  end
  object FDCustGeolocation: TFDQuery
    Connection = FDShopConnection
    SQL.Strings = (
      
        'select * from olistCustomers INNER JOIN olistGeolocation ON olis' +
        'tCustomers.customer_zip_code_prefix = olistGeolocation.geolocati' +
        'on_zip_code_prefix order by olistCustomers.customer_id'
      ''
      ''
      ''
      '')
    Left = 264
    Top = 16
  end
  object DataSource1: TDataSource
    Left = 448
    Top = 312
  end
  object frxCustGeolocation: TfrxDBDataset
    UserName = 'frxCustGeolocation'
    CloseDataSource = False
    DataSet = FDCustGeolocation
    BCDToCurrency = False
    Left = 416
    Top = 24
  end
  object FDOrdersProd: TFDQuery
    IndexFieldNames = 'order_id'
    MasterSource = OrdersDS
    MasterFields = 'order_id'
    Connection = FDShopConnection
    SQL.Strings = (
      
        'select * from olistOrderItems INNER JOIN Egoods on olistOrderIte' +
        'ms.product_id = Egoods.product_id order by olistOrderItems.order' +
        '_id'
      '')
    Left = 416
    Top = 152
  end
  object frxDBOrdersProd: TfrxDBDataset
    UserName = 'frxDBOrdersProd'
    CloseDataSource = False
    DataSet = FDOrdersProd
    BCDToCurrency = False
    Left = 432
    Top = 104
  end
  object frxReportTableObject1: TfrxReportTableObject
    Left = 392
    Top = 248
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    OpenAfterExport = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    PDFStandard = psNone
    PDFVersion = pv17
    Left = 304
    Top = 280
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 120
    Top = 224
  end
end
