object DM: TDM
  OldCreateOrder = False
  Height = 334
  Width = 503
  object pFIBDatabase: TpFIBDatabase
    DefaultTransaction = pFIBTransaction
    SQLDialect = 1
    Timeout = 0
    WaitForRestoreConnect = 0
    Left = 200
    Top = 128
  end
  object pFIBTransaction: TpFIBTransaction
    DefaultDatabase = pFIBDatabase
    Left = 304
    Top = 128
  end
end
