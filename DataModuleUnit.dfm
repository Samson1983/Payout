object ExpensenDM: TExpensenDM
  OldCreateOrder = False
  Left = 282
  Top = 137
  Height = 492
  Width = 688
  object ADOCon: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=Money' +
      '.mdb;Mode=Share Deny None;Extended Properties="";Persist Securit' +
      'y Info=False;Jet OLEDB:System database="";Jet OLEDB:Registry Pat' +
      'h="";Jet OLEDB:Database Password=gigi2009;Jet OLEDB:Engine Type=' +
      '5;Jet OLEDB:Database Locking Mode=1;Jet OLEDB:Global Partial Bul' +
      'k Ops=2;Jet OLEDB:Global Bulk Transactions=1;Jet OLEDB:New Datab' +
      'ase Password="";Jet OLEDB:Create System Database=False;Jet OLEDB' +
      ':Encrypt Database=False;Jet OLEDB:Don'#39't Copy Locale on Compact=F' +
      'alse;Jet OLEDB:Compact Without Replica Repair=False;Jet OLEDB:SF' +
      'P=False'
    ConnectOptions = coAsyncConnect
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 46
    Top = 2
  end
  object adoQ_SomeMonthS: TADOQuery
    CacheSize = 1000
    Connection = ADOCon
    CursorLocation = clUseServer
    CursorType = ctStatic
    MarshalOptions = moMarshalModifiedOnly
    BeforeOpen = adoQ_SomeMonthSBeforeOpen
    AfterOpen = adoQ_SomeMonthSAfterOpen
    Parameters = <
      item
        Name = 'YearA'
        Attributes = [paNullable]
        DataType = ftFixedChar
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = '2004'
      end>
    SQL.Strings = (
      'SELECT Month(['#26085#26399']) AS '#26376#20221', Sum(['#25903#20986'].['#37329#39069']) AS '#24635#39069
      'FROM '#25903#20986
      'WHERE (Year(['#26085#26399'])=:YearA)'
      'GROUP BY Month(['#26085#26399']);')
    Left = 46
    Top = 111
  end
  object adoQ_SomeDayS: TADOQuery
    CacheSize = 1000
    Connection = ADOCon
    CursorLocation = clUseServer
    BeforeOpen = adoQ_SomeDaySBeforeOpen
    AfterOpen = adoQ_SomeDaySAfterOpen
    DataSource = ds_SomeMonthS
    Parameters = <
      item
        Name = 'YearA'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = '2004'
      end
      item
        Name = #26376#20221
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'SELECT month(['#26085#26399']) as '#26376#20221'2 , DAY(['#26085#26399']) AS '#21495', sum(['#37329#39069']) AS '#24635#39069
      'FROM '#25903#20986
      'WHERE year('#26085#26399')=:YearA and month('#26085#26399')=:'#26376#20221
      'GROUP BY month(['#26085#26399']),DAY(['#26085#26399']);')
    Left = 46
    Top = 165
  end
  object adoQ_SomeDayC: TADOQuery
    CacheSize = 1000
    Connection = ADOCon
    CursorLocation = clUseServer
    DataSource = ds_SomeDayS
    Parameters = <
      item
        Name = 'YearA'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = '2008'
      end
      item
        Name = #26376#20221'2'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = #21495
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM '#25903#20986
      'WHERE year('#26085#26399')=:YearA and month('#26085#26399')=:'#26376#20221'2 and day('#26085#26399')=:'#21495)
    Left = 46
    Top = 274
  end
  object ds_SomeMonthS: TDataSource
    DataSet = adoQ_SomeMonthS
    Left = 454
    Top = 77
  end
  object adoQ_ConsumeTypeS: TADOQuery
    CacheSize = 1000
    Connection = ADOCon
    CursorLocation = clUseServer
    Parameters = <
      item
        Name = 'YearA'
        Attributes = [paNullable]
        DataType = ftFixedChar
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = '2004'
      end
      item
        Name = 'MonthA'
        Attributes = [paNullable]
        DataType = ftFixedChar
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = '0'
      end>
    SQL.Strings = (
      'SELECT ['#28040#36153#31867#22411'], sum(['#37329#39069']) AS '#24635#39069
      'FROM '#25903#20986
      
        'WHERE ['#28040#36153#31867#22411'] Is Not Null and year('#26085#26399')=:YearA or month('#26085#26399')=:Month' +
        'A'
      'GROUP BY ['#28040#36153#31867#22411'];')
    Left = 46
    Top = 220
  end
  object adoQ_ConsumeTypeC: TADOQuery
    CacheSize = 1000
    Connection = ADOCon
    CursorLocation = clUseServer
    CursorType = ctStatic
    BeforeOpen = adoQ_ConsumeTypeCBeforeOpen
    AfterOpen = adoQ_ConsumeTypeCAfterOpen
    BeforeRefresh = adoQ_ConsumeTypeCBeforeOpen
    AfterRefresh = adoQ_ConsumeTypeCAfterOpen
    DataSource = ds_ConsumeType
    Parameters = <
      item
        Name = #28040#36153#31867#22411
        Size = -1
        Value = Null
      end
      item
        Name = 'YearA'
        Size = -1
        Value = Null
      end
      item
        Name = 'MonthA'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT ['#25903#20986'].[ID], ['#25903#20986'].['#26085#26399'], ['#25903#20986'].['#28040#36153#21517#31216'], ['#25903#20986'].['#37329#39069'], ['#25903#20986'].['#28040#36153#31867#22411']' +
        ', ['#25903#20986'].['#27880#35299']'
      'FROM '#25903#20986
      'WHERE '#28040#36153#31867#22411'=:'#28040#36153#31867#22411' and year('#26085#26399')=:YearA or month('#26085#26399')=:MonthA;')
    Left = 251
    Top = 231
  end
  object ds_ConsumeType: TDataSource
    DataSet = adoQ_ConsumeTypeS
    Left = 457
    Top = 137
  end
  object QuryAllOut: TADOQuery
    CacheSize = 1000
    Connection = ADOCon
    CursorLocation = clUseServer
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      'Select *'
      'From '#25903#20986
      'Order by '#26085#26399)
    Left = 152
    Top = 119
  end
  object adoQryBudget: TADOQuery
    CacheSize = 1000
    Connection = ADOCon
    CursorLocation = clUseServer
    CursorType = ctStatic
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      'Select *'
      'From '#39044#31639)
    Left = 251
    Top = 176
  end
  object adoQryConsumTypeIsNull: TADOQuery
    CacheSize = 1000
    Connection = ADOCon
    CursorType = ctStatic
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      'Select *'
      'From  '#23519#30475#28040#36153#31867#22411#20026#31354#30340#35760#24405)
    Left = 46
    Top = 329
    object adoQryConsumTypeIsNullID: TAutoIncField
      FieldName = #24207#21495
      ReadOnly = True
    end
    object adoQryConsumTypeIsNullDSDesigner: TDateTimeField
      FieldName = #26085#26399
      ReadOnly = True
    end
    object adoQryConsumTypeIsNullDSDesigner2: TWideStringField
      FieldName = #28040#36153#21517#31216
      ReadOnly = True
      Size = 255
    end
    object adoQryConsumTypeIsNullDSDesigner3: TBCDField
      FieldName = #37329#39069
      ReadOnly = True
      Precision = 19
    end
    object adoQryConsumTypeIsNullDSDesigner4: TWideStringField
      FieldName = #28040#36153#31867#22411
      Size = 50
    end
    object adoQryConsumTypeIsNullDSDesigner5: TWideStringField
      FieldName = #27880#35299
      ReadOnly = True
      Size = 255
    end
  end
  object NameAnaylseMasterDS: TDataSource
    Left = 357
    Top = 8
  end
  object NameAnayDelitaQry: TADOQuery
    CacheSize = 1000
    Connection = ADOCon
    CursorLocation = clUseServer
    CursorType = ctStatic
    DataSource = NameAnaylseMasterDS
    Parameters = <
      item
        Name = 'Yea'
        Attributes = [paNullable]
        DataType = ftFixedChar
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'Name'
        Attributes = [paNullable]
        DataType = ftFixedChar
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'Mon'
        Attributes = [paNullable]
        DataType = ftFixedChar
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'Mon'
        Attributes = [paNullable]
        DataType = ftFixedChar
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM '#25903#20986
      
        'WHERE Year('#26085#26399')=:Yea and '#28040#36153#21517#31216'=:Name and ((:Mon is null) or (Month' +
        '('#26085#26399')=:Mon))'
      'ORDER BY '#37329#39069' DESC;'
      '')
    Left = 152
    Top = 63
  end
  object Qry_ConsumTypeError: TADOQuery
    CacheSize = 1000
    Connection = ADOCon
    CursorLocation = clUseServer
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      'SELECT '#25903#20986'.*'
      'FROM '#25903#20986' '
      'where '#25903#20986'.'#28040#36153#31867#22411' not in'
      '( Select '#28040#36153#31867#22411
      '  from '#28040#36153#31867#22411
      '  )')
    Left = 152
    Top = 296
  end
  object ds_tabOfenConsumName: TDataSource
    DataSet = tabOfenConsumName
    Left = 357
    Top = 128
  end
  object InComeAndPayOut: TADOQuery
    Connection = ADOCon
    Parameters = <>
    SQL.Strings = (
      '')
    Left = 251
    Top = 120
  end
  object ds_SomeDayS: TDataSource
    DataSet = adoQ_SomeDayS
    Left = 453
    Top = 8
  end
  object ADOclear: TADOQuery
    CacheSize = 1000
    Connection = ADOCon
    CursorLocation = clUseServer
    Parameters = <>
    Prepared = True
    Left = 152
    Top = 184
  end
  object DSclear: TDataSource
    DataSet = ADOclear
    Left = 357
    Top = 176
  end
  object ADOpassword: TADOQuery
    CacheSize = 1000
    Connection = ADOCon
    CursorLocation = clUseServer
    Parameters = <>
    Prepared = True
    Left = 46
    Top = 384
  end
  object DSpassword: TDataSource
    DataSet = ADOpassword
    Left = 357
    Top = 232
  end
  object exportXLS: TADOQuery
    Parameters = <>
    Left = 251
    Top = 8
  end
  object temp: TADOQuery
    Connection = ADOCon
    Parameters = <>
    Left = 251
    Top = 296
  end
  object dsexportXLS: TDataSource
    DataSet = exportXLS
    Left = 357
    Top = 56
  end
  object dstemp: TDataSource
    DataSet = temp
    Left = 357
    Top = 296
  end
  object InLinkComeType: TADOQuery
    Connection = ADOCon
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from '#25910#20837#31867#22411)
    Left = 152
    Top = 232
  end
  object OutLinkComeType: TADOQuery
    Connection = ADOCon
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from '#28040#36153#31867#22411)
    Left = 251
    Top = 56
  end
  object tabOfenConsumName: TADOQuery
    Connection = ADOCon
    Parameters = <>
    SQL.Strings = (
      'select * from '#24120#29992#28040#36153#21517#31216)
    Left = 46
    Top = 56
  end
  object NameAnayMastQry: TADOQuery
    CacheSize = 1000
    Connection = ADOCon
    CursorLocation = clUseServer
    AfterScroll = NameAnayMastQryAfterScroll
    Parameters = <
      item
        Name = 'Yea'
        DataType = ftString
        Size = 16
        Value = '2009'
      end
      item
        Name = 'Mon'
        DataType = ftFixedChar
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'Select *'
      'From '#21517#31216#20998#26512#20027#34920)
    Left = 152
    Top = 8
    object NameAnayMastQryDSDesigner: TWideStringField
      FieldName = #28040#36153#21517#31216
      Size = 255
    end
    object NameAnayMastQryDSDesigner2: TBCDField
      FieldName = #24635#39069
      Precision = 19
    end
  end
end
