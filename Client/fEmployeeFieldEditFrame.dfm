inherited frEmployeeFieldEditFrame: TfrEmployeeFieldEditFrame
  Width = 267
  Height = 49
  Constraints.MaxHeight = 49
  Constraints.MinHeight = 49
  DesignSize = (
    267
    49)
  object gbEmployee: TGroupBox [0]
    Left = 0
    Top = 0
    Width = 267
    Height = 49
    Anchors = [akLeft, akTop, akRight, akBottom]
    Caption = ' '#1057#1083#1091#1078#1080#1090#1077#1083' '
    TabOrder = 0
    object pnlEmployeeCode: TPanel
      Left = 9
      Top = 15
      Width = 56
      Height = 32
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      DesignSize = (
        56
        32)
      object edtEmployeeNo: TDBEdit
        Left = 0
        Top = 1
        Width = 56
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        BevelInner = bvNone
        DataField = 'EMPLOYEE_NO'
        DataSource = dsEmployee
        TabOrder = 0
        OnChange = edtEmployeeNoChange
      end
    end
    object pnlEmployeeName: TPanel
      Left = 65
      Top = 15
      Width = 192
      Height = 32
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      object pnlRightButtons: TPanel
        Left = 156
        Top = 0
        Width = 36
        Height = 32
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 0
        object tlbDocButton: TToolBar
          Left = 0
          Top = 0
          Width = 36
          Height = 22
          ButtonWidth = 36
          EdgeInner = esNone
          Images = dmMain.ilDocs
          TabOrder = 0
          Visible = False
          object btnDocumentation: TToolButton
            Left = 0
            Top = 0
            Action = actDocumentation
          end
        end
      end
      object pnlEmpoyeeNameInner: TPanel
        Left = 0
        Top = 0
        Width = 156
        Height = 32
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 1
        DesignSize = (
          156
          32)
        object edtEmployeeName: TDBEdit
          Left = 1
          Top = 1
          Width = 155
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          Color = clBtnFace
          DataField = '_EMPLOYEE_NAME'
          DataSource = dsEmployee
          ReadOnly = True
          TabOrder = 1
        end
        object cbEmployee: TJvDBLookupCombo
          Left = 1
          Top = 1
          Width = 155
          Height = 21
          DeleteKeyClear = False
          DataField = '_EMPLOYEE_NAME'
          DataSource = dsEmployee
          Anchors = [akLeft, akTop, akRight]
          LookupField = 'EMPLOYEE_CODE'
          LookupDisplay = 'EMPLOYEE_NAME'
          LookupSource = dsEmployees
          TabOrder = 0
          OnCloseUp = cbEmployeeCloseUp
          OnDropDown = cbEmployeeDropDown
        end
      end
    end
    object pnlPaddingLeft: TPanel
      Left = 2
      Top = 15
      Width = 7
      Height = 32
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 2
    end
    object pnlPaddingRight: TPanel
      Left = 257
      Top = 15
      Width = 8
      Height = 32
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 3
    end
  end
  inherited alActions: TActionList
    Left = 24
    Top = 24
    object actDocumentation: TAction
      Caption = 'actDocumentation'
      OnExecute = actDocumentationExecute
      OnUpdate = actDocumentationUpdate
    end
  end
  inherited dsData: TDataSource
    Left = 56
    Top = 24
  end
  object cdsEmployees: TAbmesClientDataSet
    Aggregates = <>
    ConnectionBroker = dmMain.conHumanResource
    IndexFieldNames = 'EMPLOYEE_NAME'
    Params = <
      item
        DataType = ftFloat
        Name = 'SPECIAL_PROFESSION_EMPLOYEE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPECIAL_PROFESSION_EMPLOYEE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPECIAL_PROFESSION_EMPLOYEE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPECIAL_PROFESSION_EMPLOYEE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPECIAL_PROFESSION_EMPLOYEE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPECIAL_PROFESSION_EMPLOYEE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'REQUIRED_PROFESSION_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'REQUIRED_PROFESSION_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'REQUIRED_PROFESSION_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'REQUIRED_OCC_WORK_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'REQUIRED_OCC_WORK_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'REQUIRED_OCC_WORK_DEPT_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHOW_USERS_ONLY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SHOW_USERS_ONLY'
        ParamType = ptInput
      end>
    ProviderName = 'prvEmployeeFrame'
    BeforeOpen = cdsEmployeesBeforeOpen
    Left = 184
    Top = 24
    object cdsEmployeesEMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_CODE'
    end
    object cdsEmployeesEMPLOYEE_NAME: TAbmesWideStringField
      FieldName = 'EMPLOYEE_NAME'
      Size = 44
    end
    object cdsEmployeesDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
    end
    object cdsEmployeesDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
    end
    object cdsEmployeesHAS_DOCUMENTATION: TAbmesFloatField
      FieldName = 'HAS_DOCUMENTATION'
      FieldValueType = fvtBoolean
    end
    object cdsEmployeesEMPLOYEE_NO: TAbmesFloatField
      FieldName = 'EMPLOYEE_NO'
    end
  end
  object dsEmployees: TDataSource
    DataSet = cdsEmployees
    Left = 216
    Top = 24
  end
  object cdsEmployee: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 104
    Top = 24
    object cdsEmployeeEMPLOYEE_CODE: TAbmesFloatField
      FieldName = 'EMPLOYEE_CODE'
      OnChange = cdsEmployeeEMPLOYEE_CODEChange
    end
    object cdsEmployeeEMPLOYEE_NO: TAbmesFloatField
      FieldName = 'EMPLOYEE_NO'
      OnChange = cdsEmployeeEMPLOYEE_NOChange
      OnSetText = cdsEmployeeEMPLOYEE_NOSetText
    end
    object cdsEmployee_EMPLOYEE_NAME: TAbmesWideStringField
      FieldKind = fkLookup
      FieldName = '_EMPLOYEE_NAME'
      LookupDataSet = cdsEmployees
      LookupKeyFields = 'EMPLOYEE_CODE'
      LookupResultField = 'EMPLOYEE_NAME'
      KeyFields = 'EMPLOYEE_CODE'
      OnGetText = cdsEmployee_EMPLOYEE_NAMEGetText
      Size = 100
      Lookup = True
    end
    object cdsEmployee_DOC_BRANCH_CODE: TAbmesFloatField
      FieldKind = fkLookup
      FieldName = '_DOC_BRANCH_CODE'
      LookupDataSet = cdsEmployees
      LookupKeyFields = 'EMPLOYEE_CODE'
      LookupResultField = 'DOC_BRANCH_CODE'
      KeyFields = 'EMPLOYEE_CODE'
      Lookup = True
    end
    object cdsEmployee_DOC_CODE: TAbmesFloatField
      FieldKind = fkLookup
      FieldName = '_DOC_CODE'
      LookupDataSet = cdsEmployees
      LookupKeyFields = 'EMPLOYEE_CODE'
      LookupResultField = 'DOC_CODE'
      KeyFields = 'EMPLOYEE_CODE'
      Lookup = True
    end
    object cdsEmployee_HAS_DOCUMENTATION: TAbmesFloatField
      FieldKind = fkLookup
      FieldName = '_HAS_DOCUMENTATION'
      LookupDataSet = cdsEmployees
      LookupKeyFields = 'EMPLOYEE_CODE'
      LookupResultField = 'HAS_DOCUMENTATION'
      KeyFields = 'EMPLOYEE_CODE'
      Lookup = True
    end
  end
  object dsEmployee: TDataSource
    DataSet = cdsEmployee
    Left = 136
    Top = 24
  end
end
