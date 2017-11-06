inherited frDeptOWDPriorities: TfrDeptOWDPriorities
  inherited pnlIncluded: TPanel
    inherited pnlIncludedNavigator: TPanel
      inherited navIncluded: TDBColorNavigator
        Hints.Strings = ()
      end
      object tlbIncludedTopButtons: TToolBar
        Left = 96
        Top = 0
        Width = 24
        Height = 24
        Align = alLeft
        AutoSize = True
        ButtonHeight = 24
        ButtonWidth = 24
        Images = dmMain.ilActions
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        object btnEditDeptOWDPCoverType: TToolButton
          Left = 0
          Top = 0
          Action = actEditDeptOWDPCoverType
        end
      end
    end
    inherited grdIncluded: TAbmesDBGrid
      AutoFitColWidths = True
      UseMultiTitle = True
      VertScrollBar.VisibleMode = sbAlwaysShowEh
      Columns = <
        item
          AutoFitColWidth = False
          EditButtons = <>
          FieldName = 'OCC_WORK_DEPT_PRIORITY_NO'
          Footers = <>
          Title.Caption = #1053#1077#1086#1073#1093#1086#1076#1080#1084#1080' '#1079#1072' '#1058#1055'|'#1050#1086#1076
          Width = 41
        end
        item
          EditButtons = <>
          FieldName = 'OCC_WORK_DEPT_PRIORITY_NAME'
          Footers = <>
          Title.Caption = #1053#1077#1086#1073#1093#1086#1076#1080#1084#1080' '#1079#1072' '#1058#1055'|'#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
          Width = 86
        end
        item
          Alignment = taCenter
          AutoFitColWidth = False
          EditButtons = <>
          FieldName = 'DEPT_OWDP_COVER_TYPE_CODE'
          Font.Charset = SYMBOL_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Symbol'
          Font.Style = []
          Footers = <>
          Title.Caption = #1053#1077#1086#1073#1093#1086#1076#1080#1084#1080' '#1079#1072' '#1058#1055'|'#1054#1090#1075
          Width = 31
        end>
    end
  end
  inherited pnlExcluded: TPanel
    inherited pnlExcludedNavigator: TPanel
      inherited navExcluded: TDBColorNavigator
        Hints.Strings = ()
      end
    end
    inherited grdExcluded: TAbmesDBGrid
      AutoFitColWidths = True
      UseMultiTitle = True
      VertScrollBar.VisibleMode = sbAlwaysShowEh
      Columns = <
        item
          AutoFitColWidth = False
          EditButtons = <>
          FieldName = 'OCC_WORK_DEPT_PRIORITY_NO'
          Footers = <>
          Title.Caption = #1042#1098#1079#1084#1086#1078#1085#1080' '#1079#1072' '#1058#1055'|'#1050#1086#1076
          Width = 41
        end
        item
          EditButtons = <>
          FieldName = 'OCC_WORK_DEPT_PRIORITY_NAME'
          Footers = <>
          Title.Caption = #1042#1098#1079#1084#1086#1078#1085#1080' '#1079#1072' '#1058#1055'|'#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
          Width = 120
        end
        item
          AutoFitColWidth = False
          EditButtons = <>
          FieldName = 'HAS_NOT_COVERED_DESCENDANT'
          Footers = <>
          Title.Caption = #1042#1098#1079#1084#1086#1078#1085#1080' '#1079#1072' '#1058#1055'|!'
          Title.Hint = 
            #1055#1086#1082#1072#1079#1074#1072' '#1076#1072#1083#1080' '#1089#1098#1097#1077#1089#1090#1074#1091#1074#1072' '#1058#1055' '#1085#1072#1076#1086#1083#1091', '#1082#1086#1077#1090#1086' '#1086#1095#1072#1082#1074#1072' '#1087#1086#1077#1084#1072#1085#1077' '#1085#1072' '#1086#1090#1075#1086#1074 +
            #1086#1088#1085#1086#1089#1090' '#1079#1072' '#1090#1086#1079#1080' '#1056#1077#1078#1080#1084' '#1085#1072' '#1054#1088#1075#1072#1085#1080#1079#1080#1088#1072#1085#1077
          Width = 17
        end>
    end
  end
  inherited alActions: TActionList
    object actEditDeptOWDPCoverType: TAction
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1072#1085#1077' '#1085#1072' '#1054#1090#1075#1086#1074#1086#1088#1085#1086#1089#1090
      ImageIndex = 147
      OnExecute = actEditDeptOWDPCoverTypeExecute
      OnUpdate = actEditDeptOWDPCoverTypeUpdate
    end
  end
end
