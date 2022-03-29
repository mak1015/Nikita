object DM: TDM
  OldCreateOrder = False
  Height = 458
  Width = 724
  object pFIBDatabase: TpFIBDatabase
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
    DefaultDatabase = pFIBDatabase
    Left = 128
    Top = 16
  end
  object dsGetDoc: TpFIBDataSet
    UpdateSQL.Strings = (
      'execute procedure SP_T_DOC_MOVE_U(:F_ID,'
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
      'select * from SP_T_DOC_MOVE_GET(:P_DOC_ID)')
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
  object HTTPRIO1: THTTPRIO
    HTTPWebNode.UseUTF8InHeader = True
    HTTPWebNode.InvokeOptions = [soIgnoreInvalidCerts, soAutoCheckAccessPointViaUDDI]
    HTTPWebNode.WebNodeOptions = []
    Converter.Options = [soSendMultiRefObj, soTryAllSchema, soRootRefNodesToBody, soCacheMimeResponse, soUTF8EncodeXML]
    Left = 440
    Top = 184
  end
  object dsSQL: TpFIBDataSet
    Transaction = pFIBTransaction
    Database = pFIBDatabase
    Left = 80
    Top = 112
  end
  object dsSklad: TpFIBDataSet
    SelectSQL.Strings = (
      'select * from SP_T_NSI_SKLAD_GET(:P_ID)')
    Transaction = pFIBTransaction
    Database = pFIBDatabase
    Left = 312
    Top = 224
    object dsSkladF_ID: TFIBBCDField
      FieldName = 'F_ID'
      Size = 0
    end
    object dsSkladF_NAME: TFIBStringField
      FieldName = 'F_NAME'
      Size = 60
      EmptyStrToNull = True
    end
    object dsSkladF_ADDRES: TFIBStringField
      FieldName = 'F_ADDRES'
      Size = 255
      EmptyStrToNull = True
    end
    object dsSkladF_PARTNER: TFIBBCDField
      FieldName = 'F_PARTNER'
      Size = 0
    end
    object dsSkladF_PARTNER_NAME: TFIBStringField
      FieldName = 'F_PARTNER_NAME'
      Size = 60
      EmptyStrToNull = True
    end
    object dsSkladF_PARTNER_INN: TFIBStringField
      FieldName = 'F_PARTNER_INN'
      EmptyStrToNull = True
    end
    object dsSkladF_PARTNER_KPP: TFIBStringField
      FieldName = 'F_PARTNER_KPP'
      EmptyStrToNull = True
    end
    object dsSkladF_PARTNER_ADRES: TFIBStringField
      FieldName = 'F_PARTNER_ADRES'
      Size = 255
      EmptyStrToNull = True
    end
    object dsSkladF_PARTNER_BANK: TFIBStringField
      FieldName = 'F_PARTNER_BANK'
      Size = 255
      EmptyStrToNull = True
    end
    object dsSkladF_PARTNER_BANK_ADRES: TFIBStringField
      FieldName = 'F_PARTNER_BANK_ADRES'
      Size = 255
      EmptyStrToNull = True
    end
    object dsSkladF_PARTNER_BANK_RSCH: TFIBStringField
      FieldName = 'F_PARTNER_BANK_RSCH'
      EmptyStrToNull = True
    end
    object dsSkladF_PARTNER_BANK_KSCH: TFIBStringField
      FieldName = 'F_PARTNER_BANK_KSCH'
      EmptyStrToNull = True
    end
    object dsSkladF_PARTNER_BANK_BIK: TFIBStringField
      FieldName = 'F_PARTNER_BANK_BIK'
      EmptyStrToNull = True
    end
    object dsSkladF_XML: TFIBStringField
      FieldName = 'F_XML'
      Size = 10000
      EmptyStrToNull = True
    end
    object dsSkladF_PRICE_IN: TFIBBCDField
      FieldName = 'F_PRICE_IN'
      Size = 0
    end
    object dsSkladF_PRICE_OUT: TFIBBCDField
      FieldName = 'F_PRICE_OUT'
      Size = 0
    end
    object dsSkladF_PRICE_IN_NAME: TFIBStringField
      FieldName = 'F_PRICE_IN_NAME'
      Size = 60
      EmptyStrToNull = True
    end
    object dsSkladF_PRICE_OUT_NAME: TFIBStringField
      FieldName = 'F_PRICE_OUT_NAME'
      Size = 60
      EmptyStrToNull = True
    end
    object dsSkladF_PARTNER_ROZN: TFIBBCDField
      FieldName = 'F_PARTNER_ROZN'
      Size = 0
    end
    object dsSkladF_PARTNER_ROZN_NAME: TFIBStringField
      FieldName = 'F_PARTNER_ROZN_NAME'
      Size = 255
      EmptyStrToNull = True
    end
    object dsSkladF_PREFIX: TFIBStringField
      FieldName = 'F_PREFIX'
      Size = 2
      EmptyStrToNull = True
    end
  end
  object dsGetDocGUID: TpFIBDataSet
    SelectSQL.Strings = (
      'select * from SP_T_DOC_OUT_GET_BY_GUID(:p_guid,'#39'T_DOC_MOVE'#39')')
    Transaction = pFIBTransaction
    Database = pFIBDatabase
    Left = 312
    Top = 352
  end
  object dsImportSklad: TpFIBDataSet
    SelectSQL.Strings = (
      'select * from SP_IMPORT_NSI_SKLAD(:P_CODE,:P_NAME)')
    Transaction = pFIBTransaction
    Database = pFIBDatabase
    Left = 312
    Top = 288
  end
  object dsImportGood: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    F_GOOD_ID'
      'FROM'
      '    SP_IMPORT_NSI_GOOD(:F_ID,'
      '    :F_NAME,'
      '    :F_ARTICLE,'
      '    :F_PARTNER,'
      '    :F_EXT_BASE,'
      '    :F_DOP_INFO,'
      '    :F_BARTER,'
      '    :F_PICTURE_NAME,'
      '    :F_DOC_TYPE,'
      '    :F_UPDATE_GOOD_NAME) ')
    Transaction = pFIBTransaction
    Database = pFIBDatabase
    Left = 408
    Top = 296
  end
  object dsImportScancode: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    F_RESULT'
      'FROM'
      '    SP_IMPORT_NSI_SCANCODE(:F_GOOD,'
      '    :F_SCANCODE) ')
    Transaction = pFIBTransaction
    Database = pFIBDatabase
    Left = 408
    Top = 352
  end
  object spInsDocStr: TpFIBStoredProc
    Transaction = pFIBTransaction
    Database = pFIBDatabase
    SQL.Strings = (
      
        'EXECUTE PROCEDURE SP_T_DOC_MOVE_STR_I (?F_ID, ?F_DOC_MOVE, ?F_GO' +
        'OD, ?F_PRICE, ?F_CNT, ?F_PRICE_VAL, ?F_DESCR)')
    StoredProcName = 'SP_T_DOC_MOVE_STR_I'
    Left = 528
    Top = 352
  end
  object spChangeState: TpFIBStoredProc
    Transaction = pFIBTransaction
    Database = pFIBDatabase
    SQL.Strings = (
      'EXECUTE PROCEDURE PR_T_DOC_MOVE_CH_STATE (?P_ID, ?P_STATE)')
    StoredProcName = 'PR_T_DOC_MOVE_CH_STATE'
    Left = 528
    Top = 288
  end
end
