inherited fmXModelInvestedValueFilter: TfmXModelInvestedValueFilter
  Top = 188
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlData: TPanel
    inherited gbQuantity: TGroupBox
      inherited edtQuantity: TDBEdit
        Color = clBtnFace
        ReadOnly = True
      end
    end
    object rgInvestedValueType: TDBRadioGroup
      Left = 520
      Top = 8
      Width = 195
      Height = 62
      Columns = 2
      DataField = 'INVESTED_VALUE_TYPE'
      DataSource = dsData
      Items.Strings = (
        #1055#1083#1072#1085
        #1054#1090#1095#1077#1090
        #1054#1090#1082#1083'. - '#1054#1073#1097#1086
        #1054#1090#1082#1083'. - '#1041#1083#1086#1082'.')
      ParentBackground = True
      TabOrder = 3
      Values.Strings = (
        '0'
        '1'
        '2'
        '3')
    end
  end
end
