inherited frDeptFieldEditFrame: TfrDeptFieldEditFrame
  inherited gbTreeNode: TGroupBox
    Caption = ' '#1058#1055' '
  end
  inherited cdsTreeNode: TAbmesClientDataSet
    inherited cdsTreeNodeNODE_NO: TAbmesWideStringField
      OnGetText = cdsTreeNodeNODE_NOGetText
    end
  end
end
