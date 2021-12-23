object DM: TDM
  OldCreateOrder = False
  Height = 334
  Width = 503
  object pFIBDatabase: TpFIBDatabase
    Connected = True
    DBName = '10.8.1.1/3050:nbase_dev'
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
    Left = 200
    Top = 128
  end
  object pFIBTransaction: TpFIBTransaction
    Active = True
    DefaultDatabase = pFIBDatabase
    Left = 304
    Top = 128
  end
  object dsGetDoc: TpFIBDataSet
    SelectSQL.Strings = (
      'select * from SP_T_DOC_MOVE_GET(:p_doc_id)')
    Transaction = pFIBTransaction
    Database = pFIBDatabase
    Left = 304
    Top = 184
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
end
