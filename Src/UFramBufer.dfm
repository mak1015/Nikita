object FramBufer: TFramBufer
  Left = 0
  Top = 0
  Width = 382
  Height = 501
  TabOrder = 0
  object RzToolbar1: TRzToolbar
    Left = 0
    Top = 0
    Width = 382
    Height = 48
    Images = DM.ImageList
    ShowButtonCaptions = True
    TextOptions = ttoCustom
    AutoSize = True
    BorderInner = fsNone
    BorderOuter = fsGroove
    BorderSides = [sdTop]
    BorderWidth = 0
    TabOrder = 0
    ToolbarControls = (
      BtnMoveAllLeft
      BtnPrint
      BtnRecycle
      LkpSklad)
    object BtnPrint: TRzToolButton
      Left = 90
      Top = 0
      Width = 65
      DisabledIndex = 47
      ImageIndex = 46
      Caption = #1055#1077#1095#1072#1090#1100
    end
    object BtnMoveAllLeft: TRzToolButton
      Left = 4
      Top = 0
      Width = 86
      DisabledIndex = 49
      ImageIndex = 48
      Caption = #1042' '#1076#1086#1082#1091#1084#1077#1085#1090
      OnClick = BtnMoveAllLeftClick
    end
    object BtnRecycle: TRzToolButton
      Left = 155
      Top = 0
      Width = 77
      DisabledIndex = 51
      ImageIndex = 50
      Caption = #1054#1095#1080#1089#1090#1080#1090#1100
      OnClick = RzToolButton5Click
    end
    object LkpSklad: TcxLookupComboBox
      Left = 4
      Top = 27
      Properties.DropDownListStyle = lsFixedList
      Properties.KeyFieldNames = 'F_ID'
      Properties.ListColumns = <
        item
          FieldName = 'F_NAME'
        end>
      Properties.ListSource = SrSklad
      Properties.OnChange = LkpSkladPropertiesChange
      TabOrder = 0
      Width = 251
    end
  end
  inline FramGoodCard1: TFramGoodCard
    Left = 0
    Top = 288
    Width = 382
    Height = 213
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 288
    ExplicitWidth = 382
    ExplicitHeight = 213
    inherited Panel4: TPanel
      Width = 181
      Height = 213
      ExplicitWidth = 181
      ExplicitHeight = 213
      inherited cxDBLabel1: TcxDBLabel
        Top = 106
        ExplicitTop = 106
        ExplicitWidth = 179
        ExplicitHeight = 37
        Height = 37
        Width = 179
      end
      inherited cxDBLabel2: TcxDBLabel
        Top = 143
        ExplicitTop = 143
        ExplicitWidth = 179
        ExplicitHeight = 69
        Height = 69
        Width = 179
      end
      inherited cxDBLabel3: TcxDBLabel
        Properties.WordWrap = True
        Style.LookAndFeel.SkinName = ''
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.SkinName = ''
        StyleFocused.LookAndFeel.SkinName = ''
        StyleHot.LookAndFeel.SkinName = ''
        ExplicitWidth = 179
        ExplicitHeight = 105
        Height = 105
        Width = 179
        AnchorX = 91
      end
      inherited cxGrid1: TcxGrid
        Top = 212
        Width = 179
        Height = 0
        ExplicitTop = 212
        ExplicitWidth = 179
        ExplicitHeight = 0
      end
    end
    inherited cxDBImage1: TcxDBImage
      ExplicitHeight = 213
      Height = 213
    end
    inherited dsGetGoodsInfo: TpFIBDataSet
      SelectSQL.Strings = (
        'select '
        '  f_id,'
        '  f_name,'
        '  f_article,'
        '  f_dop_info,'
        '  f_goods_grp_ext_id,'
        '  f_scancode,'
        
          '  (select F_memo from SP_T_NSI_GOODS_MMEDIA_S(:f_good,:f_ch_date' +
          ')) as f_memo'
        '  '
        'from sp_t_nsi_goods_get(:f_good,null)'
        '')
      DataSource = DSBuffer
    end
  end
  object cxGrid: TcxGrid
    Left = 0
    Top = 48
    Width = 382
    Height = 240
    Align = alClient
    TabOrder = 2
    object cxGridDBTableViewBuffer: TcxGridDBTableView
      DragMode = dmAutomatic
      OnDragDrop = cxGridDBTableViewBufferDragDrop
      OnDragOver = cxGridDBTableViewBufferDragOver
      OnKeyPress = cxGridDBTableViewBufferKeyPress
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = DSBuffer
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Kind = skSum
          Column = cxGridDBTableViewBufferF_CNT
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skSum
          Column = cxGridDBTableViewBufferF_CNT
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.IncSearch = True
      OptionsData.Inserting = False
      OptionsSelection.MultiSelect = True
      OptionsSelection.InvertSelect = False
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      OptionsView.FooterAutoHeight = True
      OptionsView.HeaderAutoHeight = True
      OptionsView.Indicator = True
      object cxGridDBTableViewBufferF_ID: TcxGridDBColumn
        DataBinding.FieldName = 'F_ID'
        Visible = False
      end
      object cxGridDBTableViewBufferF_GOOD: TcxGridDBColumn
        DataBinding.FieldName = 'F_GOOD'
        Visible = False
      end
      object cxGridDBTableViewBufferF_GOOD_ARTICLE: TcxGridDBColumn
        DataBinding.FieldName = 'F_ARTICLE'
        Options.Editing = False
        Width = 65
      end
      object cxGridDBTableViewBufferF_GOOD_NAME: TcxGridDBColumn
        Caption = #1058#1086#1074#1072#1088
        DataBinding.FieldName = 'F_GOOD_NAME'
        Options.Editing = False
        Width = 154
      end
      object cxGridDBTableViewBufferF_CNT: TcxGridDBColumn
        DataBinding.FieldName = 'F_CNT'
        PropertiesClassName = 'TcxSpinEditProperties'
        Width = 67
      end
      object cxGridDBTableViewBufferF_OST: TcxGridDBColumn
        DataBinding.FieldName = 'F_OST'
        Options.Editing = False
        Width = 66
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = cxGridDBTableViewBuffer
    end
  end
  object DSBuffer: TDataSource
    DataSet = dsGoodBuffer
    Left = 128
    Top = 80
  end
  object SrSklad: TDataSource
    DataSet = DM.dsSklad
    Left = 192
    Top = 40
  end
  object dsGoodBuffer: TpFIBDataSet
    UpdateSQL.Strings = (
      'execute procedure SP_T_USER_BUFFER_SET(:F_good,:F_CNT);')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    T_USER_BUFER'
      'WHERE'
      '  f_id=:f_id        ')
    InsertSQL.Strings = (
      'execute procedure SP_T_USER_BUFFER_SET(:F_GOOD,:F_CNT);')
    RefreshSQL.Strings = (
      '')
    SelectSQL.Strings = (
      'SELECT'
      '    F_ID,'
      '    F_GOOD,'
      '    f_article,'
      '    F_GOOD_NAME,'
      '    F_CNT,'
      '    f_ost'
      'FROM'
      '    SP_GET_USER_BUFFER(:f_sklad)')
    Transaction = pFIBTransaction1
    Database = DM.pFIBDatabase
    AutoCommit = True
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 104
    Top = 208
    object dsGoodBufferF_ID: TFIBBCDField
      FieldName = 'F_ID'
      Visible = False
      Size = 0
    end
    object dsGoodBufferF_GOOD: TFIBBCDField
      FieldName = 'F_GOOD'
      Visible = False
      Size = 0
    end
    object dsGoodBufferF_GOOD_NAME: TFIBStringField
      DisplayLabel = #1053#1072#1079#1074#1072#1085#1080#1077
      FieldName = 'F_GOOD_NAME'
      Size = 100
      EmptyStrToNull = True
    end
    object dsGoodBufferF_CNT: TFIBFloatField
      DisplayLabel = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
      FieldName = 'F_CNT'
    end
    object dsGoodBufferF_ARTICLE: TFIBStringField
      DisplayLabel = #1040#1088#1090#1080#1082#1091#1083
      FieldName = 'F_ARTICLE'
      Size = 60
      EmptyStrToNull = True
    end
    object dsGoodBufferF_OST: TFIBFloatField
      DisplayLabel = #1054#1089#1090#1072#1090#1086#1082
      FieldName = 'F_OST'
    end
  end
  object pFIBTransaction1: TpFIBTransaction
    DefaultDatabase = DM.pFIBDatabase
    Left = 200
    Top = 176
  end
end
