object Form3: TForm3
  Left = 0
  Top = 0
  Caption = #1042#1074#1077#1076#1077#1085#1085#1103' '#1076#1072#1085#1080#1093' '#1087#1088#1086' '#1087#1072#1094#1110#1108#1085#1090#1072
  ClientHeight = 343
  ClientWidth = 1095
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 257
    Height = 329
    Caption = #1042#1074#1077#1076#1110#1090#1100' '#1076#1072#1085#1110' '#1087#1072#1094#1110#1108#1085#1090#1072
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 69
      Height = 15
      Caption = #1055#1030#1041' '#1087#1072#1094#1110#1108#1085#1090#1072
    end
    object Label2: TLabel
      Left = 16
      Top = 74
      Width = 30
      Height = 15
      Caption = #1057#1090#1072#1090#1100
    end
    object Label3: TLabel
      Left = 16
      Top = 124
      Width = 94
      Height = 15
      Caption = #1053#1086#1084#1077#1088' '#1090#1077#1083#1077#1092#1086#1085#1091
    end
    object Label4: TLabel
      Left = 16
      Top = 174
      Width = 145
      Height = 15
      Caption = #1040#1076#1088#1077#1089#1072' '#1084#1110#1089#1094#1103' '#1087#1088#1086#1078#1080#1074#1072#1085#1085#1103
    end
    object Label5: TLabel
      Left = 16
      Top = 224
      Width = 96
      Height = 15
      Caption = #1044#1072#1090#1072' '#1085#1072#1088#1086#1076#1078#1077#1085#1085#1103
    end
    object Edit1: TEdit
      Left = 16
      Top = 45
      Width = 233
      Height = 23
      TabOrder = 0
    end
    object ComboBox1: TComboBox
      Left = 16
      Top = 95
      Width = 121
      Height = 23
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 1
      Text = #1063#1086#1083#1086#1074#1110#1095#1072
      Items.Strings = (
        #1063#1086#1083#1086#1074#1110#1095#1072
        #1046#1110#1085#1086#1095#1072)
    end
    object Edit2: TEdit
      Left = 16
      Top = 145
      Width = 233
      Height = 23
      TabOrder = 2
    end
    object Edit3: TEdit
      Left = 16
      Top = 195
      Width = 233
      Height = 23
      TabOrder = 3
    end
    object DateTimePicker1: TDateTimePicker
      Left = 16
      Top = 245
      Width = 121
      Height = 23
      Date = 44863.000000000000000000
      Time = 0.682651273149531300
      TabOrder = 4
    end
    object Button1: TButton
      Left = 16
      Top = 288
      Width = 75
      Height = 25
      Caption = #1044#1086#1076#1072#1090#1080
      TabOrder = 5
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 120
      Top = 288
      Width = 129
      Height = 25
      Caption = #1054#1095#1080#1089#1090#1080#1090#1080' '#1087#1086#1083#1103' '#1074#1074#1086#1076#1091
      TabOrder = 6
      OnClick = Button2Click
    end
  end
  object GroupBox2: TGroupBox
    Left = 288
    Top = 8
    Width = 785
    Height = 313
    Caption = #1042#1074#1077#1076#1077#1085#1086':'
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 16
      Top = 24
      Width = 766
      Height = 273
      DataSource = DataModule2.DataSource1
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'patient_pib'
          Title.Caption = #1055#1030#1041' '#1087#1072#1094#1110#1108#1085#1090#1072
          Width = 197
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'gender'
          Title.Caption = #1057#1090#1072#1090#1100
          Width = 86
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'pat_tel'
          Title.Caption = #1053#1086#1084#1077#1088' '#1090#1077#1083#1077#1092#1086#1085#1091
          Width = 113
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'birth'
          Title.Caption = #1044#1072#1090#1072' '#1085#1072#1088#1086#1076#1078#1077#1085#1085#1103
          Width = 98
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'adress'
          Title.Caption = #1040#1076#1088#1077#1089#1072
          Visible = True
        end>
    end
  end
end
