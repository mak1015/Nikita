object DM: TDM
  OldCreateOrder = False
  Height = 458
  Width = 724
  object pFIBDatabase: TpFIBDatabase
    Connected = True
    DBName = '192.168.0.201/3050:nbase_dev'
    DBParams.Strings = (
      'user_name=SYSDBA'
      'password=951'
      'lc_ctype=WIN1251')
    DefaultTransaction = pFIBTransaction
    SQLDialect = 3
    Timeout = 0
    LibraryName = 'C:\MyProjects\Shevan\Nikita\GetMoveDocs\gds32.dll'
    AliasName = 'nbase_dev'
    WaitForRestoreConnect = 0
    SaveAliasParamsAfterConnect = False
    Left = 24
    Top = 8
  end
  object pFIBTransaction: TpFIBTransaction
    Active = True
    DefaultDatabase = pFIBDatabase
    Left = 128
    Top = 16
  end
  object dsGetDoc: TpFIBDataSet
    UpdateSQL.Strings = (
      'execute procedure SP_T_DOC_MOVE_U(:F_DOC_MOVE,'
      '  :F_DATE,'
      '  :F_NUMBER,'
      '  :F_SKLAD_FROM,'
      '  :F_SKLAD_TO,'
      '  :F_STATE,'
      '  :F_DOC_SUM,'
      '  :F_PRICE,'
      '  :F_TYPE,'
      '  :F_DOC_COUNT,'
      '  :F_DOP_INFO)'
      '')
    SelectSQL.Strings = (
      'select * from SP_T_DOC_MOVE_GET(4)')
    Active = True
    Transaction = pFIBTransaction
    Database = pFIBDatabase
    Left = 24
    Top = 344
    object dsGetDocF_ID: TFIBBCDField
      FieldName = 'F_ID'
      Size = 0
    end
    object dsGetDocF_SKLAD_FROM: TFIBBCDField
      FieldName = 'F_SKLAD_FROM'
      Size = 0
    end
    object dsGetDocF_SKLAD_TO: TFIBBCDField
      FieldName = 'F_SKLAD_TO'
      Size = 0
    end
    object dsGetDocF_NUMBER: TFIBStringField
      FieldName = 'F_NUMBER'
      Size = 60
      EmptyStrToNull = True
    end
    object dsGetDocF_DATE: TFIBDateField
      FieldName = 'F_DATE'
      DisplayFormat = 'dd.mm.yyyy'
    end
    object dsGetDocF_STATE: TFIBBCDField
      FieldName = 'F_STATE'
      Size = 0
    end
    object dsGetDocF_STATE_NAME: TFIBStringField
      FieldName = 'F_STATE_NAME'
      Size = 60
      EmptyStrToNull = True
    end
    object dsGetDocF_SKLAD_FROM_PREFIX: TFIBStringField
      FieldName = 'F_SKLAD_FROM_PREFIX'
      EmptyStrToNull = True
    end
    object dsGetDocF_SKLAD_FROM_NAME: TFIBStringField
      FieldName = 'F_SKLAD_FROM_NAME'
      Size = 60
      EmptyStrToNull = True
    end
    object dsGetDocF_SKLAD_FROM_INN: TFIBStringField
      FieldName = 'F_SKLAD_FROM_INN'
      EmptyStrToNull = True
    end
    object dsGetDocF_SKLAD_FROM_F_NAME: TFIBStringField
      FieldName = 'F_SKLAD_FROM_F_NAME'
      Size = 100
      EmptyStrToNull = True
    end
    object dsGetDocF_SKLAD_FROM_KPP: TFIBStringField
      FieldName = 'F_SKLAD_FROM_KPP'
      EmptyStrToNull = True
    end
    object dsGetDocF_SKLAD_TO_PREFIX: TFIBStringField
      FieldName = 'F_SKLAD_TO_PREFIX'
      EmptyStrToNull = True
    end
    object dsGetDocF_SKLAD_TO_NAME: TFIBStringField
      FieldName = 'F_SKLAD_TO_NAME'
      Size = 60
      EmptyStrToNull = True
    end
    object dsGetDocF_SKLAD_TO_INN: TFIBStringField
      FieldName = 'F_SKLAD_TO_INN'
      EmptyStrToNull = True
    end
    object dsGetDocF_SKLAD_TO_F_NAME: TFIBStringField
      FieldName = 'F_SKLAD_TO_F_NAME'
      Size = 100
      EmptyStrToNull = True
    end
    object dsGetDocF_SKLAD_TO_KPP: TFIBStringField
      FieldName = 'F_SKLAD_TO_KPP'
      EmptyStrToNull = True
    end
    object dsGetDocF_PRICE: TFIBBCDField
      FieldName = 'F_PRICE'
      Size = 0
    end
    object dsGetDocF_PRICE_NAME: TFIBStringField
      FieldName = 'F_PRICE_NAME'
      Size = 60
      EmptyStrToNull = True
    end
    object dsGetDocF_DOC_SUM: TFIBBCDField
      FieldName = 'F_DOC_SUM'
      DisplayFormat = '#,##0.000'
      EditFormat = '0.000'
      Size = 3
    end
    object dsGetDocF_TYPE: TFIBBCDField
      FieldName = 'F_TYPE'
      Size = 0
    end
    object dsGetDocF_DOP_INFO: TFIBStringField
      FieldName = 'F_DOP_INFO'
      Size = 10000
      EmptyStrToNull = True
    end
    object dsGetDocF_USER: TFIBStringField
      FieldName = 'F_USER'
      Size = 60
      EmptyStrToNull = True
    end
    object dsGetDocF_TYPE_NAME: TFIBStringField
      FieldName = 'F_TYPE_NAME'
      Size = 255
      EmptyStrToNull = True
    end
    object dsGetDocF_GUID: TFIBStringField
      FieldName = 'F_GUID'
      Size = 100
      EmptyStrToNull = True
    end
  end
  object dsGetDocStrings: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    F_ID,'
      '    F_DOC_MOVE,'
      '    F_GOOD_NAME,'
      '    F_GOOD_DOP_INFO,'
      '    F_SCANCODE,'
      '    F_ED_IZM_SHORT_NAME,'
      '    F_ED_IZM_NAME,'
      '    F_ARTICLE,'
      '    F_GOOD,'
      '    F_PRICE,'
      '    F_CNT,'
      '    F_PRICE_VAL,'
      '    F_SUM,'
      '    f_sklad_ost,'
      '    f_sklad_to_ost,'
      '    F_GOOD_GRP_COLOR,'
      '    F_DESCR'
      'FROM'
      '    SP_T_DOC_MOVE_STR_S(:DOC_id)'
      '')
    Transaction = pFIBTransaction
    Database = pFIBDatabase
    Left = 96
    Top = 344
    object dsGetDocStringsF_ID: TFIBBCDField
      FieldName = 'F_ID'
      Size = 0
    end
    object dsGetDocStringsF_DOC_MOVE: TFIBBCDField
      FieldName = 'F_DOC_MOVE'
      Size = 0
    end
    object dsGetDocStringsF_GOOD_NAME: TFIBStringField
      FieldName = 'F_GOOD_NAME'
      Size = 255
      EmptyStrToNull = True
    end
    object dsGetDocStringsF_GOOD_DOP_INFO: TFIBStringField
      FieldName = 'F_GOOD_DOP_INFO'
      Size = 10000
      EmptyStrToNull = True
    end
    object dsGetDocStringsF_SCANCODE: TFIBStringField
      FieldName = 'F_SCANCODE'
      EmptyStrToNull = True
    end
    object dsGetDocStringsF_ED_IZM_SHORT_NAME: TFIBStringField
      FieldName = 'F_ED_IZM_SHORT_NAME'
      Size = 60
      EmptyStrToNull = True
    end
    object dsGetDocStringsF_ED_IZM_NAME: TFIBStringField
      FieldName = 'F_ED_IZM_NAME'
      Size = 60
      EmptyStrToNull = True
    end
    object dsGetDocStringsF_ARTICLE: TFIBStringField
      FieldName = 'F_ARTICLE'
      EmptyStrToNull = True
    end
    object dsGetDocStringsF_GOOD: TFIBBCDField
      FieldName = 'F_GOOD'
      Size = 0
    end
    object dsGetDocStringsF_PRICE: TFIBBCDField
      FieldName = 'F_PRICE'
      Size = 0
    end
    object dsGetDocStringsF_CNT: TFIBBCDField
      FieldName = 'F_CNT'
      Size = 3
    end
    object dsGetDocStringsF_PRICE_VAL: TFIBBCDField
      FieldName = 'F_PRICE_VAL'
      Size = 3
    end
    object dsGetDocStringsF_SUM: TFIBFloatField
      FieldName = 'F_SUM'
    end
    object dsGetDocStringsF_SKLAD_OST: TFIBFloatField
      FieldName = 'F_SKLAD_OST'
    end
    object dsGetDocStringsF_SKLAD_TO_OST: TFIBFloatField
      FieldName = 'F_SKLAD_TO_OST'
    end
    object dsGetDocStringsF_GOOD_GRP_COLOR: TFIBStringField
      FieldName = 'F_GOOD_GRP_COLOR'
      Size = 60
      EmptyStrToNull = True
    end
    object dsGetDocStringsF_DESCR: TFIBStringField
      FieldName = 'F_DESCR'
      Size = 255
      EmptyStrToNull = True
    end
  end
end
