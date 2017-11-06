inherited frProductFilter: TfrProductFilter
  inherited grpTreeNodeFilter: TGroupBox
    Caption = ' '#1059#1087#1088#1072#1074#1083#1103#1077#1084' '#1054#1073#1077#1082#1090' '
    inherited pnlNodes: TPanel
      inherited grdChosenNodes: TAbmesDBGrid
        Columns = <
          item
            EditButtons = <>
            FieldName = 'NODE_NAME'
            Footers = <>
            Width = 226
          end
          item
            EditButtons = <>
            FieldName = 'NODE_NO'
            Footers = <>
            Width = 75
          end>
      end
    end
  end
  inherited cdsChosenNodes: TAbmesClientDataSet
    FieldDefs = <
      item
        Name = 'NODE_CODE'
        DataType = ftFloat
      end
      item
        Name = 'NODE_NAME'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'NODE_NO'
        DataType = ftFloat
      end>
  end
end
