object CantObjDebForm: TCantObjDebForm
  Left = 295
  Top = 107
  Caption = 'Object Debugger'
  ClientHeight = 499
  ClientWidth = 320
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 85
    Width = 320
    Height = 414
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 1
    OnChange = PageControl1Change
    object TabSheet1: TTabSheet
      Caption = 'Properties'
      object ListSet: TListBox
        Left = 88
        Top = 112
        Width = 121
        Height = 97
        ExtendedSelect = False
        ItemHeight = 13
        MultiSelect = True
        TabOrder = 7
        OnClick = ListSetClick
        OnExit = RefreshOnExit
      end
      object EditCh: TEdit
        Left = 64
        Top = 80
        Width = 121
        Height = 21
        TabOrder = 6
        Text = 'EditCh'
        OnChange = EditChange
        OnExit = EditChExit
      end
      object EditStr: TEdit
        Left = 80
        Top = 160
        Width = 121
        Height = 21
        TabOrder = 5
        Text = 'EditStr'
        OnChange = EditChange
        OnExit = EditStrExit
      end
      object EditNum: TEdit
        Left = 72
        Top = 128
        Width = 121
        Height = 21
        TabOrder = 4
        Text = 'EditNum'
        OnChange = EditChange
        OnExit = EditNumExit
        OnKeyPress = EditNumKeyPress
      end
      object ComboEnum: TComboBox
        Left = 72
        Top = 152
        Width = 145
        Height = 21
        TabOrder = 3
        OnChange = ComboEnumChange
        OnDblClick = ComboEnumDblClick
        OnExit = RefreshOnExit
      end
      object ComboCursor: TComboBox
        Left = 72
        Top = 120
        Width = 145
        Height = 21
        TabOrder = 2
        OnChange = ComboCursorChange
        OnExit = RefreshOnExit
      end
      object ComboColor: TComboBox
        Left = 72
        Top = 88
        Width = 121
        Height = 21
        TabOrder = 1
        OnChange = ComboColorChange
        OnDblClick = ComboColorDblClick
        OnExit = RefreshOnExit
      end
      object sgProp: TStringGrid
        Left = 0
        Top = 0
        Width = 312
        Height = 386
        Align = alClient
        Color = clBtnFace
        ColCount = 2
        DefaultColWidth = 120
        DefaultRowHeight = 18
        FixedCols = 0
        RowCount = 12
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine]
        ScrollBars = ssVertical
        TabOrder = 0
        OnDblClick = sgPropDblClick
        OnMouseDown = sgDataMouseDown
        OnSelectCell = sgPropSelectCell
        ColWidths = (
          109
          120)
        RowHeights = (
          18
          18
          18
          18
          18
          18
          18
          18
          18
          18
          18
          18)
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Events'
      object sgEvt: TStringGrid
        Left = 0
        Top = 0
        Width = 312
        Height = 386
        Align = alClient
        Color = clBtnFace
        ColCount = 2
        DefaultColWidth = 120
        DefaultRowHeight = 18
        FixedCols = 0
        RowCount = 12
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goColSizing]
        ScrollBars = ssVertical
        TabOrder = 0
        OnMouseDown = sgDataMouseDown
        OnSelectCell = sgPropSelectCell
        ColWidths = (
          109
          120)
        RowHeights = (
          18
          18
          18
          18
          18
          18
          18
          18
          18
          18
          18
          18)
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Data'
      object sgData: TStringGrid
        Left = 0
        Top = 0
        Width = 312
        Height = 386
        Align = alClient
        Color = clBtnFace
        ColCount = 2
        DefaultColWidth = 120
        DefaultRowHeight = 18
        FixedCols = 0
        RowCount = 12
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goColSizing]
        ScrollBars = ssVertical
        TabOrder = 0
        OnMouseDown = sgDataMouseDown
        OnSelectCell = sgDataSelectCell
        ColWidths = (
          109
          120)
        RowHeights = (
          18
          18
          18
          18
          18
          18
          18
          18
          18
          18
          18
          18)
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 320
    Height = 85
    Align = alTop
    TabOrder = 0
    object cbComps: TComboBox
      AlignWithMargins = True
      Left = 4
      Top = 31
      Width = 312
      Height = 21
      Align = alTop
      Style = csDropDownList
      Sorted = True
      TabOrder = 0
      OnChange = cbCompsChange
    end
    object cbForms: TComboBox
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 312
      Height = 21
      Align = alTop
      Style = csDropDownList
      TabOrder = 1
      OnChange = cbFormsChange
    end
    object edFilter: TButtonedEdit
      AlignWithMargins = True
      Left = 4
      Top = 58
      Width = 312
      Height = 21
      Align = alTop
      Images = ImageList1
      LeftButton.Enabled = False
      LeftButton.ImageIndex = 1
      LeftButton.Visible = True
      RightButton.Hint = 'Clear the filter'
      RightButton.ImageIndex = 0
      RightButton.Visible = True
      TabOrder = 2
      TextHint = 'Type to filter...'
      OnChange = SearchBox1Change
      OnKeyDown = edFilterKeyDown
      OnRightButtonClick = edFilterRightButtonClick
    end
  end
  object ColorDialog1: TColorDialog
    Left = 96
    Top = 288
  end
  object FontDialog1: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Left = 32
    Top = 289
  end
  object MainMenu1: TMainMenu
    Left = 164
    Top = 289
    object Options1: TMenuItem
      Caption = '&Options'
      object RefreshForms1: TMenuItem
        Caption = 'Refresh &Forms'
        OnClick = RefreshForms1Click
      end
      object RefreshComponents1: TMenuItem
        Caption = 'Refresh &Components'
        OnClick = RefreshComponents1Click
      end
      object RefreshValues1: TMenuItem
        Caption = 'Refresh &Values'
        OnClick = RefreshValues1Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object TopMost1: TMenuItem
        Caption = '&TopMost'
        OnClick = TopMost1Click
      end
    end
    object Help1: TMenuItem
      Caption = '&Help'
      object Info1: TMenuItem
        Caption = '&Info...'
        OnClick = Info1Click
      end
      object About1: TMenuItem
        Caption = '&About...'
        OnClick = About1Click
      end
    end
  end
  object Timer1: TTimer
    Interval = 2000
    OnTimer = Timer1Timer
    Left = 220
    Top = 289
  end
  object ImageList1: TImageList
    Left = 196
    Top = 150
    Bitmap = {
      494C010102000500040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EEEEEE0087878700D5D5
      D500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DFDFDF005A5A
      5A00F3F3F300000000000000000000000000000000000000000000000000F2F2
      F20059595900E1E1E10000000000000000000000000082828200010101001212
      1200CDCDCD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000555555000000
      00003C3C3C00F3F3F30000000000000000000000000000000000F2F2F2003A3A
      3A000000000059595900000000000000000000000000D0D0D000101010000101
      010012121200CDCDCD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F0F0F0003737
      3700000000003C3C3C00F3F3F3000000000000000000F2F2F2003A3A3A000000
      00003A3A3A00F2F2F20000000000000000000000000000000000C8C8C8001010
      10000101010012121200CDCDCD00CCCCCC007F7F7F006868680083838300D4D4
      D400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F1F1
      F10038383800000000003C3C3C00F3F3F300F3F3F3003B3B3B00000000003B3B
      3B00F2F2F200000000000000000000000000000000000000000000000000C8C8
      C800101010000101010009090900010101000A0A0A0024242400080808000202
      02006D6D6D00FCFCFC0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F1F1F10038383800000000003C3C3C003C3C3C00000000003C3C3C00F3F3
      F300000000000000000000000000000000000000000000000000000000000000
      0000C8C8C80007070700050505008E8E8E00F8F8F80000000000F4F4F4008080
      8000020202007171710000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F1F1F1003939390000000000000000003C3C3C00F3F3F3000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C8C8C8000101010090909000000000000000000000000000000000000000
      00007B7B7B0003030300DCDCDC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F2F2F2003939390000000000000000003C3C3C00F3F3F3000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007A7A7A000D0D0D00F9F9F900000000000000000000000000000000000000
      0000EEEEEE000303030091919100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F2F2F20039393900000000003939390039393900000000003C3C3C00F3F3
      F300000000000000000000000000000000000000000000000000000000000000
      0000636363002828280000000000000000000000000000000000000000007474
      7400E9E9E9001414140078787800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F2F2
      F200393939000000000039393900F2F2F200F1F1F10038383800000000003C3C
      3C00F3F3F3000000000000000000000000000000000000000000000000000000
      00007D7D7D000B0B0B00F7F7F700000000000000000000000000A7A7A7000B0B
      0B00D8D8D8000202020092929200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F2F2F2003939
      39000000000039393900F2F2F2000000000000000000F1F1F100373737000000
      00003C3C3C00F3F3F30000000000000000000000000000000000000000000000
      0000CCCCCC00010101008686860000000000000000007171710009090900AAAA
      AA007575750004040400DEDEDE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000565656000000
      000039393900F2F2F20000000000000000000000000000000000F1F1F1003737
      3700000000005A5A5A0000000000000000000000000000000000000000000000
      000000000000626262000303030081818100F1F1F100E5E5E500D6D6D6007777
      7700010101007777770000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DDDDDD005656
      5600F2F2F200000000000000000000000000000000000000000000000000F0F0
      F00055555500DFDFDF0000000000000000000000000000000000000000000000
      000000000000FAFAFA0067676700020202000505050018181800040404000303
      030075757500FDFDFD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D5D5D50089898900737373008D8D8D00DCDC
      DC00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFF00000000FFFF8FFF00000000
      C7E387FF00000000C3C383FF00000000C183C00F00000000E007E00300000000
      F00FF04300000000F81FF1F100000000F81FF1F100000000F00FF3E100000000
      E007F1C100000000C183F18100000000C3C3F80300000000C7E3F80300000000
      FFFFFE0F00000000FFFFFFFF0000000000000000000000000000000000000000
      000000000000}
  end
end
