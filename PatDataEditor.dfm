object Form5: TForm5
  Left = 0
  Top = 0
  Caption = #1056#1077#1076#1072#1075#1091#1074#1072#1085#1085#1103
  ClientHeight = 485
  ClientWidth = 787
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
    Width = 771
    Height = 473
    Caption = #1056#1077#1076#1072#1075#1091#1074#1072#1085#1085#1103' '#1076#1072#1085#1080#1093' '#1087#1072#1094#1110#1108#1085#1090#1072
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 32
      Width = 111
      Height = 15
      Caption = #1042#1074#1077#1076#1110#1090#1100' '#1055#1030#1041' '#1087#1072#1094#1110#1108#1085#1090#1072
    end
    object Label9: TLabel
      Left = 16
      Top = 124
      Width = 74
      Height = 15
      Caption = #1044#1072#1085#1110' '#1087#1072#1094#1110#1108#1085#1090#1072
      Visible = False
    end
    object Label10: TLabel
      Left = 340
      Top = 32
      Width = 188
      Height = 15
      Caption = #1054#1073#1077#1088#1110#1090#1100' '#1085#1086#1084#1077#1088' '#1090#1077#1083#1077#1092#1086#1085#1091' '#1087#1072#1094#1110#1108#1085#1090#1072
    end
    object Edit1: TEdit
      Left = 16
      Top = 53
      Width = 265
      Height = 23
      TabOrder = 0
    end
    object Button1: TButton
      Left = 105
      Top = 82
      Width = 75
      Height = 25
      Caption = #1047#1085#1072#1081#1090#1080
      TabOrder = 1
      OnClick = Button1Click
    end
    object DBGrid1: TDBGrid
      Left = 16
      Top = 145
      Width = 745
      Height = 148
      DataSource = DataModule2.DataSource1
      ReadOnly = True
      TabOrder = 2
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
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'gender'
          Title.Caption = #1057#1090#1072#1090#1100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'pat_tel'
          Title.Caption = #1053#1086#1084#1077#1088' '#1090#1077#1083#1077#1092#1086#1085#1091
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'birth'
          Title.Caption = #1044#1072#1090#1072' '#1085#1072#1088#1086#1076#1078#1077#1085#1085#1103
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'adress'
          Title.Caption = #1040#1076#1088#1077#1089#1072
          Visible = True
        end>
    end
    object GroupBox3: TGroupBox
      Left = 3
      Top = 299
      Width = 675
      Height = 164
      Caption = #1042#1074#1077#1076#1110#1090#1100' '#1086#1085#1086#1074#1083#1077#1085#1110' '#1076#1072#1085#1110
      TabOrder = 3
      Visible = False
      object Label2: TLabel
        Left = 13
        Top = 24
        Width = 69
        Height = 15
        Caption = #1055#1030#1041' '#1087#1072#1094#1110#1108#1085#1090#1072
      end
      object Label3: TLabel
        Left = 13
        Top = 74
        Width = 30
        Height = 15
        Caption = #1057#1090#1072#1090#1100
      end
      object Label4: TLabel
        Left = 288
        Top = 24
        Width = 94
        Height = 15
        Caption = #1053#1086#1084#1077#1088' '#1090#1077#1083#1077#1092#1086#1085#1091
      end
      object Label5: TLabel
        Left = 288
        Top = 74
        Width = 39
        Height = 15
        Caption = #1040#1076#1088#1077#1089#1072
      end
      object Label6: TLabel
        Left = 320
        Top = 96
        Width = 34
        Height = 15
        Caption = 'Label6'
      end
      object Label7: TLabel
        Left = 505
        Top = 24
        Width = 96
        Height = 15
        Caption = #1044#1072#1090#1072' '#1085#1072#1088#1086#1076#1078#1077#1085#1085#1103
      end
      object Edit2: TEdit
        Left = 13
        Top = 45
        Width = 228
        Height = 23
        TabOrder = 0
      end
      object ComboBox1: TComboBox
        Left = 13
        Top = 95
        Width = 164
        Height = 23
        Style = csDropDownList
        ItemIndex = 0
        TabOrder = 1
        Text = #1063#1086#1083#1086#1074#1110#1095#1072
        Items.Strings = (
          #1063#1086#1083#1086#1074#1110#1095#1072
          #1046#1110#1085#1086#1095#1072)
      end
      object Edit3: TEdit
        Left = 288
        Top = 45
        Width = 185
        Height = 23
        TabOrder = 2
      end
      object Edit4: TEdit
        Left = 288
        Top = 95
        Width = 185
        Height = 23
        TabOrder = 3
      end
      object DateTimePicker1: TDateTimePicker
        Left = 504
        Top = 47
        Width = 113
        Height = 23
        Date = 44866.000000000000000000
        Time = 0.682461168980808000
        TabOrder = 4
      end
      object Button2: TButton
        Left = 279
        Top = 132
        Width = 75
        Height = 25
        Caption = #1054#1085#1086#1074#1080#1090#1080
        TabOrder = 5
        OnClick = Button2Click
      end
    end
    object ComboBox3: TComboBox
      Left = 340
      Top = 53
      Width = 222
      Height = 23
      Style = csDropDownList
      TabOrder = 4
    end
    object Button3: TButton
      Left = 401
      Top = 82
      Width = 75
      Height = 25
      Caption = #1064#1091#1082#1072#1090#1080
      TabOrder = 5
      OnClick = Button3Click
    end
  end
end
