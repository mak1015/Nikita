object FrmMain: TFrmMain
  Left = 0
  Top = 0
  Caption = #1053#1080#1082#1080#1090#1072
  ClientHeight = 579
  ClientWidth = 860
  Color = clAppWorkSpace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = MainMenu1
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 523
    Top = 126
    Width = 5
    Height = 430
    Align = alRight
    Visible = False
    ExplicitLeft = 616
    ExplicitTop = 116
    ExplicitHeight = 440
  end
  object dxRibbon1: TdxRibbon
    Left = 0
    Top = 0
    Width = 860
    Height = 126
    BarManager = dxBarManager
    ColorSchemeName = 'Blue'
    Contexts = <>
    TabOrder = 1
    TabStop = False
    object dxRibbon1Tab1: TdxRibbonTab
      Active = True
      Caption = #1056#1072#1073#1086#1090#1072
      Groups = <
        item
          ToolbarName = 'dxBarManagerBar2'
        end
        item
          ToolbarName = 'dxBarManagerBar3'
        end>
      Index = 0
    end
    object dxRibbon1Tab2: TdxRibbonTab
      Caption = #1056#1086#1079#1085#1080#1094#1072
      Groups = <
        item
          ToolbarName = 'dxBarManagerBar1'
        end>
      Index = 1
    end
  end
  object dxRibbonStatusBar1: TdxRibbonStatusBar
    Left = 0
    Top = 556
    Width = 860
    Height = 23
    Panels = <
      item
        PanelStyleClassName = 'TdxStatusBarToolbarPanelStyle'
      end>
    Ribbon = dxRibbon1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clDefault
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
  end
  object Panel: TPanel
    Left = 528
    Top = 126
    Width = 332
    Height = 430
    Align = alRight
    Color = clAppWorkSpace
    DockSite = True
    ParentBackground = False
    TabOrder = 2
    Visible = False
    inline FramBufer1: TFramBufer
      Left = 1
      Top = 1
      Width = 330
      Height = 428
      Align = alClient
      TabOrder = 0
      ExplicitLeft = 1
      ExplicitTop = 1
      ExplicitWidth = 330
      ExplicitHeight = 428
      inherited RzToolbar1: TRzToolbar
        Width = 330
        ExplicitWidth = 330
        ToolbarControls = (
          BtnMoveAllLeft
          BtnPrint
          BtnRecycle
          LkpSklad)
        inherited BtnMoveAllLeft: TRzToolButton
          OnClick = FramBufer1BtnMoveAllLeftClick
        end
      end
      inherited FramGoodCard1: TFramGoodCard
        Top = 215
        Width = 330
        ExplicitTop = 215
        ExplicitWidth = 330
        inherited Panel4: TPanel
          Width = 129
          ExplicitWidth = 129
          inherited cxDBLabel1: TcxDBLabel
            ExplicitWidth = 127
            Width = 127
          end
          inherited cxDBLabel2: TcxDBLabel
            ExplicitWidth = 127
            Width = 127
          end
          inherited cxDBLabel3: TcxDBLabel
            Style.LookAndFeel.SkinName = ''
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.SkinName = ''
            StyleFocused.LookAndFeel.SkinName = ''
            StyleHot.LookAndFeel.SkinName = ''
            ExplicitWidth = 127
            Width = 127
            AnchorX = 65
          end
          inherited cxGrid1: TcxGrid
            Width = 127
            ExplicitWidth = 127
          end
        end
        inherited dsGetGoodsInfo: TpFIBDataSet
          DataSource = FramBufer1.DSBuffer
        end
      end
      inherited cxGrid: TcxGrid
        Width = 330
        Height = 167
        ExplicitWidth = 330
        ExplicitHeight = 167
        inherited cxGridDBTableViewBuffer: TcxGridDBTableView
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Kind = skSum
              Column = FramBufer1.cxGridDBTableViewBufferF_CNT
            end>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skSum
              Column = FramBufer1.cxGridDBTableViewBufferF_CNT
            end>
        end
      end
      inherited dsGoodBuffer: TpFIBDataSet
        RefreshSQL.Strings = ()
      end
    end
  end
  object PageControl1: TcxPageControl
    Left = 0
    Top = 126
    Width = 523
    Height = 430
    Align = alClient
    BiDiMode = bdLeftToRight
    Color = clAppWorkSpace
    DockSite = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentBiDiMode = False
    ParentColor = False
    ParentFont = False
    TabOrder = 3
    Properties.CustomButtons.Buttons = <>
    Properties.Options = [pcoAlwaysShowGoDialogButton, pcoCloseButton, pcoGradient, pcoGradientClientArea, pcoRedrawOnResize]
    LookAndFeel.Kind = lfFlat
    LookAndFeel.SkinName = 'MoneyTwins'
    ClientRectBottom = 426
    ClientRectLeft = 4
    ClientRectRight = 519
    ClientRectTop = 4
  end
  object RzRegIniFile: TRzRegIniFile
    Path = 'nikita_main'
    PathType = ptRegistry
    RegAccess = [keySetValue, keyRead, keyWrite, keyAllAccess]
    Left = 248
    Top = 272
  end
  object RzFormState1: TRzFormState
    RegIniFile = RzRegIniFile
    Left = 216
    Top = 272
  end
  object MainMenu1: TMainMenu
    Left = 312
    Top = 272
    object N1: TMenuItem
      Caption = #1044#1086#1082#1091#1084#1077#1085#1090#1099
      object N2: TMenuItem
        Action = DM.ActDocInp
      end
      object N3: TMenuItem
        Action = DM.ActDocOut
      end
      object N15: TMenuItem
        Action = DM.ActDocMove
      end
      object N14: TMenuItem
        Action = DM.ActDocPrice
      end
      object N4: TMenuItem
        Action = DM.ActDocMoneyInp
      end
      object N5: TMenuItem
        Action = DM.ActDocMoneyOut
      end
    end
    object N6: TMenuItem
      Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082#1080
      object N7: TMenuItem
        Action = DM.ActNsiBank
      end
      object N8: TMenuItem
        Action = DM.ActNsiPartner
      end
      object N9: TMenuItem
        Action = DM.ActNsiPrice
      end
      object N10: TMenuItem
        Action = DM.ActNsiSklad
      end
      object N11: TMenuItem
        Action = DM.ActNsiTovar
      end
    end
    object N12: TMenuItem
      Caption = #1054#1090#1095#1077#1090#1099
      object N13: TMenuItem
        Action = DM.ActZapas
      end
      object N17: TMenuItem
        Action = DM.ActReportKKM
      end
    end
    object N18: TMenuItem
      Caption = #1048#1085#1089#1090#1088#1091#1084#1077#1085#1090#1099
      object N19: TMenuItem
        Caption = #1050#1086#1085#1089#1086#1083#1100
        OnClick = N19Click
      end
    end
    object NGoodBufer: TMenuItem
      Caption = #1058#1086#1074#1072#1088#1085#1099#1081' '#1073#1091#1092#1077#1088
      OnClick = NGoodBuferClick
    end
    object N16: TMenuItem
      Caption = #1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077
      OnClick = N16Click
    end
  end
  object dxBarManager: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      #1050#1086#1084#1072#1085#1076#1099' '#1087#1088#1086#1075#1088#1072#1084#1084#1099
      #1055#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102
      #1056#1086#1079#1085#1080#1094#1072
      #1054#1082#1085#1072)
    Categories.ItemsVisibles = (
      2
      2
      2
      2)
    Categories.Visibles = (
      True
      True
      True
      True)
    ImageOptions.LargeImages = DM.ImageListLage
    MenuAnimations = maSlide
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 280
    Top = 272
    PixelsPerInch = 96
    object dxBarManagerBar2: TdxBar
      AllowClose = False
      Caption = #1044#1086#1082#1091#1084#1077#1085#1090#1099
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 478
      FloatTop = 146
      FloatClientWidth = 113
      FloatClientHeight = 88
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarSubItem3'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItem4'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItem2'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItem1'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItem9'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object dxBarManagerBar3: TdxBar
      Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082#1080
      CaptionButtons = <>
      DockedLeft = 407
      DockedTop = 0
      FloatLeft = 281
      FloatTop = 352
      FloatClientWidth = 51
      FloatClientHeight = 22
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarSubItem5'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItem7'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItem8'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItem12'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarManagerBar1: TdxBar
      Caption = #1056#1086#1079#1085#1080#1094#1072
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 28
      FloatTop = 202
      FloatClientWidth = 51
      FloatClientHeight = 22
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarRoznSale'
        end
        item
          Visible = True
          ItemName = 'dxBarRoznBack'
        end
        item
          Visible = True
          ItemName = 'dxBarRoznMove'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton1'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarButton1: TdxBarButton
      Action = DM.ActDocInp
      Category = 0
    end
    object dxBarButton2: TdxBarButton
      Action = DM.ActDocOut
      Category = 0
    end
    object dxBarButton3: TdxBarButton
      Action = DM.ActDocMoneyInp
      Category = 0
    end
    object dxBarButton4: TdxBarButton
      Action = DM.ActDocMoneyOut
      Category = 0
    end
    object dxBarButton5: TdxBarButton
      Action = DM.ActDocPrice
      Category = 0
    end
    object dxBarButton6: TdxBarButton
      Action = DM.ActDocMove
      Category = 0
    end
    object dxBarButton7: TdxBarButton
      Action = DM.ActNsiPartner
      Category = 0
    end
    object dxBarButton8: TdxBarButton
      Action = DM.ActNsiBank
      Category = 0
    end
    object dxBarButton9: TdxBarButton
      Action = DM.ActNsiSklad
      Category = 0
    end
    object dxBarButton10: TdxBarButton
      Action = DM.ActNsiTovar
      Category = 0
    end
    object dxBarButton11: TdxBarButton
      Action = DM.ActNsiStatus
      Category = 0
    end
    object dxBarButton13: TdxBarButton
      Action = DM.ActNsiPrice
      Category = 0
    end
    object dxBarButton14: TdxBarButton
      Action = DM.ActInventory
      Category = 0
    end
    object dxBarButton16: TdxBarButton
      Action = DM.ActDocOutBack
      Category = 0
    end
    object dxBarButton15: TdxBarButton
      Action = DM.ActDocInpBack
      Category = 0
    end
    object dxBarButton12: TdxBarButton
      Action = DM.ActDocMoveSpisan
      Category = 0
    end
    object dxBarButton29: TdxBarButton
      Action = DM.ActNsiGoodsInfo
      Category = 0
    end
    object dxBarSubItem1: TdxBarSubItem
      Caption = #1057#1082#1083#1072#1076#1089#1082#1080#1077' '#1086#1087#1077#1088#1072#1094#1080#1080
      Category = 1
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton14'
        end
        item
          Visible = True
          ItemName = 'dxBarButton18'
        end
        item
          Visible = True
          ItemName = 'dxBarButton6'
        end
        item
          Visible = True
          ItemName = 'dxBarButton12'
        end
        item
          Visible = True
          ItemName = 'dxBarButton19'
        end>
    end
    object dxBarButton19: TdxBarButton
      Action = DM.ActDocMovePrihod
      Category = 1
    end
    object dxBarButton17: TdxBarButton
      Caption = #1055#1083#1072#1090#1077#1078#1085#1099#1077' '#1086#1087#1077#1088#1072#1094#1080#1080
      Category = 1
      Hint = #1055#1083#1072#1090#1077#1078#1085#1099#1077' '#1086#1087#1077#1088#1072#1094#1080#1080
      Visible = ivAlways
    end
    object dxBarSubItem2: TdxBarSubItem
      Caption = #1055#1083#1072#1090#1077#1078#1085#1099#1077' '#1086#1087#1077#1088#1072#1094#1080#1080
      Category = 1
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton3'
        end
        item
          Visible = True
          ItemName = 'dxBarButton4'
        end>
    end
    object dxBarSubItem3: TdxBarSubItem
      Caption = #1055#1088#1086#1076#1072#1078#1080
      Category = 1
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton2'
        end
        item
          Visible = True
          ItemName = 'dxBarButton15'
        end>
    end
    object dxBarSubItem4: TdxBarSubItem
      Caption = #1047#1072#1082#1091#1087#1082#1080
      Category = 1
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton5'
        end
        item
          Visible = True
          ItemName = 'dxBarButton1'
        end
        item
          Visible = True
          ItemName = 'dxBarButton16'
        end>
    end
    object dxBarButton18: TdxBarButton
      Action = DM.ActDocTemplate
      Category = 1
    end
    object dxBarButton20: TdxBarButton
      Action = DM.ActNsiDiscount
      Category = 1
    end
    object dxBarButton21: TdxBarButton
      Caption = #1053#1086#1074#1072#1103' '#1082#1085#1086#1087#1082#1072
      Category = 1
      Hint = #1053#1086#1074#1072#1103' '#1082#1085#1086#1087#1082#1072
      Visible = ivAlways
    end
    object dxBarSubItem5: TdxBarSubItem
      Caption = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090#1099
      Category = 1
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton7'
        end
        item
          Visible = True
          ItemName = 'dxBarButton8'
        end>
    end
    object dxBarSubItem6: TdxBarSubItem
      Caption = #1053#1086#1074#1099#1081' '#1087#1086#1076'-'#1101#1083#1077#1084#1077#1085#1090
      Category = 1
      Visible = ivAlways
      ItemLinks = <>
    end
    object dxBarButton22: TdxBarButton
      Caption = #1053#1086#1074#1072#1103' '#1082#1085#1086#1087#1082#1072
      Category = 1
      Hint = #1053#1086#1074#1072#1103' '#1082#1085#1086#1087#1082#1072
      Visible = ivAlways
    end
    object dxBarSubItem7: TdxBarSubItem
      Caption = #1053#1086#1084#1077#1085#1082#1083#1072#1090#1091#1088#1072
      Category = 1
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton9'
        end
        item
          Visible = True
          ItemName = 'dxBarButton10'
        end
        item
          Visible = True
          ItemName = 'dxBarButton23'
        end
        item
          Visible = True
          ItemName = 'dxBarButton29'
        end>
    end
    object dxBarSubItem8: TdxBarSubItem
      Caption = #1062#1077#1085#1099
      Category = 1
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton13'
        end
        item
          Visible = True
          ItemName = 'dxBarButton20'
        end>
    end
    object dxBarButton23: TdxBarButton
      Action = DM.ActNsiTovarType
      Category = 1
    end
    object dxBarSubItem9: TdxBarSubItem
      Caption = #1061#1086#1079'.'#1076#1077#1103#1090#1077#1083#1100#1085#1086#1089#1090#1100
      Category = 1
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton24'
        end
        item
          Visible = True
          ItemName = 'dxBarButton26'
        end>
    end
    object dxBarButton24: TdxBarButton
      Action = DM.ActDocInpHz
      Category = 1
    end
    object dxBarSubItem10: TdxBarSubItem
      Caption = #1053#1086#1074#1099#1081' '#1087#1086#1076'-'#1101#1083#1077#1084#1077#1085#1090
      Category = 1
      Visible = ivAlways
      ItemLinks = <>
    end
    object dxBarButton25: TdxBarButton
      Caption = #1053#1086#1074#1072#1103' '#1082#1085#1086#1087#1082#1072
      Category = 1
      Hint = #1053#1086#1074#1072#1103' '#1082#1085#1086#1087#1082#1072
      Visible = ivAlways
    end
    object dxBarSubItem11: TdxBarSubItem
      Caption = #1053#1086#1074#1099#1081' '#1087#1086#1076'-'#1101#1083#1077#1084#1077#1085#1090
      Category = 1
      Visible = ivAlways
      ItemLinks = <>
    end
    object dxBarButton26: TdxBarButton
      Action = DM.ActDocOutHZ
      Category = 1
    end
    object dxBarButton27: TdxBarButton
      Action = DM.ActNsiDocProperty
      Category = 1
    end
    object dxBarButton28: TdxBarButton
      Caption = #1044#1086#1082#1091#1084#1077#1085#1090#1099
      Category = 1
      Hint = #1044#1086#1082#1091#1084#1077#1085#1090#1099
      Visible = ivAlways
    end
    object dxBarSubItem12: TdxBarSubItem
      Caption = #1044#1086#1082#1091#1084#1077#1085#1090#1099
      Category = 1
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton27'
        end>
    end
    object dxBarButton30: TdxBarButton
      Caption = #1053#1086#1074#1072#1103' '#1082#1085#1086#1087#1082#1072
      Category = 1
      Hint = #1053#1086#1074#1072#1103' '#1082#1085#1086#1087#1082#1072
      Visible = ivAlways
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Action = DM.ActInventory
      Category = 1
    end
    object dxBarRoznSale: TdxBarLargeButton
      Action = DM.ActDocOut
      Category = 2
      PaintStyle = psCaption
    end
    object dxBarRoznBack: TdxBarLargeButton
      Action = DM.ActDocInpBack
      Category = 2
    end
    object dxBarRoznMove: TdxBarLargeButton
      Action = DM.ActDocMove
      Category = 2
    end
    object dxBarListItem: TdxBarListItem
      Caption = #1054#1090#1082#1088#1099#1090#1099#1077' '#1086#1082#1085#1072
      Category = 3
      Visible = ivAlways
      OnClick = dxBarListItemClick
      OnGetData = dxBarListItemGetData
      ShowCheck = True
    end
  end
  object dxDockingManager: TdxDockingManager
    Color = clBtnFace
    DefaultHorizContainerSiteProperties.CustomCaptionButtons.Buttons = <>
    DefaultHorizContainerSiteProperties.Dockable = True
    DefaultHorizContainerSiteProperties.ImageIndex = -1
    DefaultVertContainerSiteProperties.CustomCaptionButtons.Buttons = <>
    DefaultVertContainerSiteProperties.Dockable = True
    DefaultVertContainerSiteProperties.ImageIndex = -1
    DefaultTabContainerSiteProperties.CustomCaptionButtons.Buttons = <>
    DefaultTabContainerSiteProperties.Dockable = True
    DefaultTabContainerSiteProperties.ImageIndex = -1
    DefaultTabContainerSiteProperties.TabsProperties.CustomButtons.Buttons = <>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    LookAndFeel.Kind = lfStandard
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Office2007Black'
    Left = 408
    Top = 240
    PixelsPerInch = 96
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
    Creator = 'FastReport (http://www.fast-report.com)'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    Left = 160
    Top = 176
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
    PictureType = gpJPG
    Left = 160
    Top = 224
  end
  object frxXMLExport1: TfrxXMLExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Background = True
    Creator = 'FastReport'
    EmptyLines = True
    SuppressPageHeadersFooters = False
    RowsCount = 0
    Split = ssNotSplit
    Left = 312
    Top = 176
  end
  object frxRTFExport1: TfrxRTFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PictureType = gpJPG
    OpenAfterExport = False
    Wysiwyg = True
    Creator = 'FastReport http://www.fast-report.com'
    SuppressPageHeadersFooters = False
    HeaderFooterMode = hfText
    AutoSize = False
    Left = 416
    Top = 168
  end
  object frxCrossObject1: TfrxCrossObject
    Left = 216
    Top = 128
  end
  object frxDialogControls1: TfrxDialogControls
    Left = 248
    Top = 128
  end
  object frxFIBComponents2: TfrxFIBComponents
    DefaultDatabase = DM.pFIBDatabase
    Left = 280
    Top = 128
  end
  object frxDesigner2: TfrxDesigner
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
    Left = 312
    Top = 128
  end
  object frxBarCodeObject1: TfrxBarCodeObject
    Left = 344
    Top = 128
  end
  object frxXLSXExport1: TfrxXLSXExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ChunkSize = 0
    OpenAfterExport = False
    PictureType = gpJPG
    Left = 240
    Top = 350
  end
  object frxHTML5DivExport1: TfrxHTML5DivExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    OpenAfterExport = False
    MultiPage = False
    Formatted = False
    PictureFormat = pfJPG
    UnifiedPictures = True
    Navigation = True
    EmbeddedPictures = True
    EmbeddedCSS = True
    HTML5 = True
    AllPictures = False
    ExportAnchors = True
    PictureTag = 0
    Left = 360
    Top = 398
  end
  object frxODSExport1: TfrxODSExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    CreationTime = 0.000000000000000000
    DataOnly = False
    PictureType = gpJPG
    OpenAfterExport = False
    Background = True
    Creator = 'FastReport'
    SingleSheet = False
    Language = 'en'
    SuppressPageHeadersFooters = False
    Left = 192
    Top = 398
  end
  object frxPPTXExport1: TfrxPPTXExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    OpenAfterExport = False
    PictureType = gpPNG
    Left = 184
    Top = 454
  end
  object frxODTExport1: TfrxODTExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    CreationTime = 0.000000000000000000
    DataOnly = False
    PictureType = gpJPG
    OpenAfterExport = False
    Background = True
    Creator = 'FastReport'
    SingleSheet = False
    Language = 'en'
    SuppressPageHeadersFooters = False
    Left = 272
    Top = 454
  end
  object frxBIFFExport1: TfrxBIFFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    OpenAfterExport = False
    RowHeightScale = 1.000000000000000000
    ChunkSize = 0
    Inaccuracy = 10.000000000000000000
    FitPages = False
    Pictures = True
    ParallelPages = 0
    Left = 360
    Top = 462
  end
end
