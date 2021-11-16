inherited FrmTemplateDoc: TFrmTemplateDoc
  Caption = #1047#1072#1075#1086#1090#1086#1074#1082#1072
  ClientHeight = 564
  ClientWidth = 791
  ExplicitWidth = 807
  ExplicitHeight = 602
  PixelsPerInch = 96
  TextHeight = 13
  inherited RzStatusBar1: TRzStatusBar
    Top = 545
    Width = 791
    ExplicitTop = 545
    ExplicitWidth = 791
  end
  inherited Panel3: TPanel
    Width = 791
    Height = 545
    ExplicitWidth = 791
    ExplicitHeight = 545
    inherited RzToolbar: TRzToolbar
      Width = 789
      Height = 25
      ExplicitWidth = 789
      ExplicitHeight = 25
      ToolbarControls = (
        BtnNew
        BtnEdit
        BtnView
        BtnOpen
        BtnRefresh
        BtnFind
        BtnPrint
        BtnOK
        BtnCancel
        BtnExecute
        BtnDelete
        BtnSave
        BtnExit)
      inherited BtnNew: TRzToolButton
        Top = 0
        ExplicitTop = 0
      end
      inherited BtnOpen: TRzToolButton
        Top = 0
        Enabled = True
        OnClick = BtnOpenClick
        ExplicitTop = 0
      end
      inherited BtnFind: TRzToolButton
        Top = 0
        ExplicitTop = 0
      end
      inherited BtnPrint: TRzToolButton
        Top = 0
        ExplicitTop = 0
      end
      inherited BtnOK: TRzToolButton
        Top = 0
        ExplicitTop = 0
      end
      inherited BtnCancel: TRzToolButton
        Top = 0
        ExplicitTop = 0
      end
      inherited BtnRefresh: TRzToolButton
        Top = 0
        Enabled = True
        OnClick = BtnRefreshClick
        ExplicitTop = 0
      end
      inherited BtnEdit: TRzToolButton
        Top = 0
        ExplicitTop = 0
      end
      inherited BtnExecute: TRzToolButton
        Top = 0
        Enabled = True
        OnClick = BtnExecuteClick
        ExplicitTop = 0
      end
      inherited BtnDelete: TRzToolButton
        Top = 0
        ExplicitTop = 0
      end
      inherited BtnSave: TRzToolButton
        Top = 0
        ExplicitTop = 0
      end
      inherited BtnExit: TRzToolButton
        Top = 0
        ExplicitTop = 0
      end
      inherited BtnView: TRzToolButton
        Top = 0
        ExplicitTop = 0
      end
    end
    object RzPanel1: TRzPanel
      Left = 1
      Top = 26
      Width = 789
      Height = 43
      Align = alTop
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object RzLabel1: TRzLabel
        Left = 8
        Top = 7
        Width = 44
        Height = 19
        Caption = #1053#1086#1084#1077#1088
      end
      object RzLabel2: TRzLabel
        Left = 186
        Top = 9
        Width = 32
        Height = 19
        Caption = #1044#1072#1090#1072
      end
      object RzLabel6: TRzLabel
        Left = 349
        Top = 8
        Width = 42
        Height = 19
        Caption = #1055#1088#1072#1081#1089
      end
      object RzDBEdit1: TRzDBEdit
        Left = 54
        Top = 5
        Width = 121
        Height = 27
        DataSource = srDocHead
        DataField = 'F_NUMBER'
        TabOrder = 0
      end
      object RzDBDateTimeEdit1: TRzDBDateTimeEdit
        Left = 224
        Top = 5
        Width = 121
        Height = 27
        DataSource = srDocHead
        DataField = 'F_DATE'
        TabOrder = 1
        EditType = etDate
      end
      object RzDBButtonEdit3: TRzDBButtonEdit
        Left = 414
        Top = 6
        Width = 144
        Height = 27
        DataSource = srDocHead
        DataField = 'F_PRICE_NAME'
        TabOrder = 2
        AltBtnWidth = 15
        ButtonWidth = 15
        OnButtonClick = RzDBButtonEdit3ButtonClick
      end
    end
    object Panel1: TPanel
      Left = 1
      Top = 69
      Width = 789
      Height = 475
      Align = alClient
      Caption = 'Panel1'
      TabOrder = 2
      ExplicitTop = 73
      ExplicitHeight = 471
      object Splitter1: TSplitter
        Left = 645
        Top = 1
        Height = 188
        Align = alRight
        ExplicitLeft = 631
        ExplicitTop = 79
        ExplicitHeight = 255
      end
      object cxGrid1: TcxGrid
        Left = 1
        Top = 1
        Width = 644
        Height = 188
        Align = alClient
        TabOrder = 0
        LookAndFeel.SkinName = 'MoneyTwins'
        object cxGrid1DBTableView1: TcxGridDBTableView
          OnDragDrop = cxGrid1DBTableView1DragDrop
          OnDragOver = cxGrid1DBTableView1DragOver
          OnKeyPress = cxGrid1DBTableView1KeyPress
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.Insert.Visible = False
          Navigator.Visible = True
          OnCellDblClick = cxGrid1DBTableView1CellDblClick
          OnCustomDrawCell = cxGrid1DBTableView1CustomDrawCell
          DataController.DataSource = srDocStrings
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Kind = skSum
              Position = spFooter
            end
            item
              Kind = skSum
              Position = spFooter
            end>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skSum
              FieldName = 'F_SUM'
              DisplayText = #1048#1090#1086#1075#1086#1074#1072#1103' '#1089#1091#1084#1084#1072
            end
            item
              Kind = skSum
            end
            item
              Kind = skSum
            end
            item
              Kind = skSum
            end
            item
              Kind = skSum
              Column = cxGrid1DBTableView1F_CNT
            end
            item
              Kind = skSum
              Column = cxGrid1DBTableView1F_SUM
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsSelection.MultiSelect = True
          OptionsView.CellAutoHeight = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.Footer = True
          OptionsView.FooterAutoHeight = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderAutoHeight = True
          Styles.StyleSheet = DM.GridTableViewStyleSheetDevExpress
          object cxGrid1DBTableView1F_ID: TcxGridDBColumn
            DataBinding.FieldName = 'F_ID'
            Visible = False
          end
          object cxGrid1DBTableView1F_DOC_TEMPLATE: TcxGridDBColumn
            DataBinding.FieldName = 'F_DOC_TEMPLATE'
            Visible = False
          end
          object cxGrid1DBTableView1F_ARTICLE: TcxGridDBColumn
            DataBinding.FieldName = 'F_ARTICLE'
            Options.Editing = False
            Width = 37
          end
          object cxGrid1DBTableView1F_GOOD_NAME: TcxGridDBColumn
            DataBinding.FieldName = 'F_GOOD_NAME'
            Options.Editing = False
            Width = 122
          end
          object cxGrid1DBTableView1F_GOOD_DOP_INFO: TcxGridDBColumn
            DataBinding.FieldName = 'F_GOOD_DOP_INFO'
            Visible = False
          end
          object cxGrid1DBTableView1F_SCANCODE: TcxGridDBColumn
            DataBinding.FieldName = 'F_SCANCODE'
            Visible = False
          end
          object cxGrid1DBTableView1F_ED_IZM_SHORT_NAME: TcxGridDBColumn
            DataBinding.FieldName = 'F_ED_IZM_SHORT_NAME'
            Visible = False
          end
          object cxGrid1DBTableView1F_ED_IZM_NAME: TcxGridDBColumn
            DataBinding.FieldName = 'F_ED_IZM_NAME'
            Visible = False
          end
          object cxGrid1DBTableView1F_GOOD: TcxGridDBColumn
            DataBinding.FieldName = 'F_GOOD'
            Visible = False
          end
          object cxGrid1DBTableView1F_DESCR: TcxGridDBColumn
            DataBinding.FieldName = 'F_DESCR'
            Width = 98
          end
          object cxGrid1DBTableView1F_CNT: TcxGridDBColumn
            DataBinding.FieldName = 'F_CNT'
            Width = 105
          end
          object cxGrid1DBTableView1F_PRICE_VAL: TcxGridDBColumn
            DataBinding.FieldName = 'F_PRICE_VAL'
            Options.Editing = False
            Width = 105
          end
          object cxGrid1DBTableView1F_SUM: TcxGridDBColumn
            DataBinding.FieldName = 'F_SUM'
            Options.Editing = False
            Width = 101
          end
          object cxGrid1DBTableView1F_OST_SKLAD_DEF: TcxGridDBColumn
            DataBinding.FieldName = 'F_OST_SKLAD_DEF'
            Visible = False
            Options.Editing = False
            Width = 96
          end
          object cxGrid1DBTableView1F_RESERVED: TcxGridDBColumn
            DataBinding.FieldName = 'F_RESERVED'
            Options.Editing = False
          end
          object cxGrid1DBTableView1F_GOOD_GRP_COLOR: TcxGridDBColumn
            DataBinding.FieldName = 'F_GOOD_GRP_COLOR'
            Visible = False
          end
          object cxGrid1DBTableView1F_OST: TcxGridDBColumn
            DataBinding.FieldName = 'F_OST'
            Visible = False
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
      object cxDBImage1: TcxDBImage
        Left = 648
        Top = 1
        Align = alRight
        DataBinding.DataField = 'f_photo'
        DataBinding.DataSource = srGoodPhoto
        Properties.FitMode = ifmProportionalStretch
        Properties.GraphicClassName = 'TdxSmartImage'
        Properties.ReadOnly = True
        TabOrder = 1
        Height = 188
        Width = 140
      end
      inline FramBanner1: TFramBanner
        Left = 1
        Top = 197
        Width = 787
        Height = 277
        Align = alBottom
        TabOrder = 2
        ExplicitLeft = 1
        ExplicitTop = 193
        ExplicitWidth = 787
        inherited cxPageControl1: TcxPageControl
          Width = 787
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 787
          ExplicitHeight = 277
          ClientRectRight = 783
          inherited cxTabSheet1: TcxTabSheet
            ExplicitLeft = 4
            ExplicitTop = 24
            ExplicitWidth = 779
            ExplicitHeight = 249
            inherited cxGrid1: TcxGrid
              Width = 779
              ExplicitLeft = 0
              ExplicitTop = 0
              ExplicitWidth = 779
              ExplicitHeight = 249
              inherited cxGrid1DBTableAnalog: TcxGridDBTableView
                inherited cxGrid1DBTableAnalogF_GOOD_MMEDIA: TcxGridDBColumn
                  Properties.FitMode = ifmFit
                end
              end
            end
          end
          inherited cxTabSheet2: TcxTabSheet
            ExplicitLeft = 4
            ExplicitTop = 24
            ExplicitWidth = 467
            ExplicitHeight = 249
          end
        end
      end
      object cxSplitter1: TcxSplitter
        Left = 1
        Top = 189
        Width = 787
        Height = 8
        AlignSplitter = salBottom
      end
    end
  end
  inherited frxReport2: TfrxReport
    Left = 160
    Top = 80
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object srDocStrings: TDataSource
    DataSet = dsDocStrings
    Left = 368
    Top = 224
  end
  object dsDocStrings: TpFIBDataSet
    UpdateSQL.Strings = (
      'execute procedure SP_T_DOC_TEMPLATE_STR_U('
      '    :F_ID,'
      '    :doc_id,'
      '    :F_GOOD,'
      '    :F_PRICE_VAL,'
      '    :F_CNT,'
      '    :f_descr);')
    DeleteSQL.Strings = (
      'execute procedure SP_T_DOC_template_STR_D(:f_id)')
    InsertSQL.Strings = (
      'execute procedure SP_T_DOC_TEMPLATE_STR_I('
      '    :F_ID,'
      '    :doc_id,'
      '    :F_GOOD,'
      '    :F_PRICE_VAL,'
      '    :F_CNT,'
      '    :f_descr);')
    SelectSQL.Strings = (
      'SELECT'
      '    F_ID,'
      '    F_DOC_TEMPLATE,'
      '    F_GOOD_NAME,'
      '    F_GOOD_DOP_INFO,'
      '    F_SCANCODE,'
      '    F_ED_IZM_SHORT_NAME,'
      '    F_ED_IZM_NAME,'
      '    F_ARTICLE,'
      '    F_GOOD,'
      '    F_CNT,'
      '    F_PRICE_VAL,'
      '    F_SUM,'
      '    F_OST_SKLAD_DEF,'
      '    f_descr,'
      '    F_GOOD_GRP_COLOR,'
      '    (select f_ost from SP_GET_GOOD_CURR_OST(f_good)) as f_ost,'
      '    coalesce(f_reserved,0) f_reserved'
      'FROM'
      '    SP_T_DOC_TEMPLATE_STR_S(:DOC_id) ')
    AutoUpdateOptions.ParamsToFieldsLinks.Strings = (
      'F_DOC_MOVE=DOC_ID')
    AfterDelete = dsDocStringsAfterDelete
    AfterPost = dsDocStringsAfterPost
    AfterScroll = dsDocStringsAfterScroll
    BeforePost = dsDocStringsBeforePost
    OnCalcFields = dsDocStringsCalcFields
    Transaction = pFIBTransaction1
    Database = DM.pFIBDatabase
    AutoCommit = True
    DataSource = srDocHead
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 360
    Top = 208
    object dsDocStringsF_ID: TFIBBCDField
      FieldName = 'F_ID'
      Visible = False
      Size = 0
    end
    object dsDocStringsF_DOC_TEMPLATE: TFIBBCDField
      FieldName = 'F_DOC_TEMPLATE'
      Visible = False
      Size = 0
    end
    object dsDocStringsF_GOOD_NAME: TFIBStringField
      DisplayLabel = #1053#1086#1084#1077#1085#1082#1083#1072#1090#1091#1088#1072
      FieldName = 'F_GOOD_NAME'
      Size = 255
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsDocStringsF_GOOD_DOP_INFO: TFIBStringField
      DisplayLabel = #1054#1087#1080#1089#1072#1085#1080#1077' '#1090#1086#1074#1072#1088#1072
      FieldName = 'F_GOOD_DOP_INFO'
      Visible = False
      Size = 1000
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsDocStringsF_SCANCODE: TFIBStringField
      DisplayLabel = #1064#1090#1088#1080#1093#1082#1086#1076
      FieldName = 'F_SCANCODE'
      Visible = False
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsDocStringsF_ED_IZM_SHORT_NAME: TFIBStringField
      DisplayLabel = #1077#1076'.'#1080#1079#1084'.'
      FieldName = 'F_ED_IZM_SHORT_NAME'
      Visible = False
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsDocStringsF_ED_IZM_NAME: TFIBStringField
      FieldName = 'F_ED_IZM_NAME'
      Visible = False
      Size = 60
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsDocStringsF_ARTICLE: TFIBStringField
      DisplayLabel = #1040#1088#1090#1080#1082#1091#1083
      FieldName = 'F_ARTICLE'
      Size = 60
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsDocStringsF_GOOD: TFIBBCDField
      FieldName = 'F_GOOD'
      Visible = False
      Size = 0
    end
    object dsDocStringsF_CNT: TFIBBCDField
      DisplayLabel = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
      FieldName = 'F_CNT'
      DisplayFormat = '### ### ###'
      Size = 3
    end
    object dsDocStringsF_PRICE_VAL: TFIBBCDField
      DisplayLabel = #1062#1077#1085#1072
      FieldName = 'F_PRICE_VAL'
      Size = 3
    end
    object dsDocStringsF_SUM: TFIBBCDField
      DisplayLabel = #1057#1091#1084#1084#1072
      FieldName = 'F_SUM'
      Size = 3
    end
    object dsDocStringsF_OST_SKLAD_DEF: TFIBBCDField
      DisplayLabel = #1054#1089#1090#1072#1090#1086#1082' '#1085#1072' '#1089#1082#1083#1072#1076#1077
      FieldName = 'F_OST_SKLAD_DEF'
      Size = 3
    end
    object dsDocStringsF_DESCR: TFIBStringField
      DisplayLabel = #1044#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1072#1103' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1103
      FieldName = 'F_DESCR'
      Size = 255
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsDocStringsF_GOOD_GRP_COLOR: TFIBStringField
      FieldName = 'F_GOOD_GRP_COLOR'
      Size = 60
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsDocStringsF_OST: TFIBStringField
      FieldName = 'F_OST'
      Size = 255
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsDocStringsF_RESERVED: TFIBBCDField
      DisplayLabel = #1047#1072#1088#1077#1079#1077#1088#1074#1080#1088#1086#1074#1072#1085#1086
      FieldName = 'F_RESERVED'
      Size = 0
    end
  end
  object dsDocHead: TpFIBDataSet
    UpdateSQL.Strings = (
      'execute procedure SP_T_DOC_TEMPLATE_U(:DOC_ID,'
      '  :F_NUMBER,'
      '  :F_DATE,'
      '  :f_STATE,'
      '  :F_PRICE)'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    F_ID as Doc_ID,'
      '    F_ID as F_DOC_MOVE,'
      '    F_NUMBER,'
      '    F_DATE,'
      '    F_STATE,'
      '    F_STATE_NAME,'
      '    F_PRICE,'
      '    F_PRICE_NAME'
      'FROM'
      '    SP_T_DOC_TEMPLATE_GET(:DOC_ID) ')
    AfterOpen = dsDocHeadAfterOpen
    Transaction = pFIBTransaction1
    Database = DM.pFIBDatabase
    AutoCommit = True
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 272
    Top = 64
    object dsDocHeadDOC_ID: TFIBBCDField
      FieldName = 'DOC_ID'
      Size = 0
    end
    object dsDocHeadF_DOC_MOVE: TFIBBCDField
      FieldName = 'F_DOC_MOVE'
      Size = 0
    end
    object dsDocHeadF_NUMBER: TFIBStringField
      FieldName = 'F_NUMBER'
      Size = 60
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsDocHeadF_DATE: TFIBDateField
      FieldName = 'F_DATE'
    end
    object dsDocHeadF_STATE: TFIBBCDField
      FieldName = 'F_STATE'
      Size = 0
    end
    object dsDocHeadF_STATE_NAME: TFIBStringField
      FieldName = 'F_STATE_NAME'
      Size = 60
      Transliterate = False
      EmptyStrToNull = True
    end
    object dsDocHeadF_PRICE: TFIBBCDField
      FieldName = 'F_PRICE'
      Size = 0
    end
    object dsDocHeadF_PRICE_NAME: TFIBStringField
      FieldName = 'F_PRICE_NAME'
      Size = 60
      Transliterate = False
      EmptyStrToNull = True
    end
  end
  object srDocHead: TDataSource
    DataSet = dsDocHead
    Left = 280
    Top = 72
  end
  object dsGoodPhoto: TpFIBDataSet
    SelectSQL.Strings = (
      'select f_memo as f_photo from SP_T_NSI_GOODS_MMEDIA_S(:f_good)')
    Transaction = DM.pFIBTransaction
    Database = DM.pFIBDatabase
    UpdateTransaction = pFIBTransaction1
    DataSource = srDocStrings
    DefaultFormats.DateTimeDisplayFormat = 'dd.mm.yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 696
    Top = 120
    WaitEndMasterScroll = True
    dcForceOpen = True
  end
  object pFIBTransaction1: TpFIBTransaction
    Active = True
    DefaultDatabase = DM.pFIBDatabase
    Left = 608
    Top = 120
  end
  object srGoodPhoto: TDataSource
    DataSet = dsGoodPhoto
    Left = 696
    Top = 160
  end
end
