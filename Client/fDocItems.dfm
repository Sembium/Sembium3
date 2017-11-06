inherited fmDocItems: TfmDocItems
  Left = 249
  Top = 155
  BorderIcons = [biSystemMenu, biMaximize]
  BorderStyle = bsSingle
  Caption = #1052#1048#1048#1054
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBottomButtons: TPanel
    TabOrder = 1
    inherited pnlOKCancel: TPanel
      TabOrder = 2
    end
    inherited pnlClose: TPanel
      TabOrder = 1
    end
    inherited pnlApply: TPanel
      TabOrder = 3
      Visible = False
    end
    object pnlDataButtons: TPanel
      Left = 0
      Top = 0
      Width = 345
      Height = 35
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      object btnInsertDocItem: TBitBtn
        Left = 8
        Top = 2
        Width = 105
        Height = 25
        Action = frDoc.actInsertMenu
        Caption = #1044#1086#1073#1072#1074#1103#1085#1077'...'
        TabOrder = 0
      end
      object btnDelDocItem: TBitBtn
        Left = 120
        Top = 2
        Width = 105
        Height = 25
        Action = frDoc.actDelDocItem
        Caption = #1048#1079#1090#1088#1080#1074#1072#1085#1077'...'
        TabOrder = 1
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00FF000000
          FF000000FF000000FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
          FF000000FF000000FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00
          FF00FF00FF00FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
          0000FF000000FF00FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00
          0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
          0000FF000000FF00FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      end
      object btnEditDocItem: TBitBtn
        Left = 232
        Top = 2
        Width = 105
        Height = 25
        Action = frDoc.actEditDocItem
        Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1072#1085#1077'...'
        TabOrder = 2
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
          0000FF00FF000000000000000000000000000000000000000000FFFFFF00FFFF
          FF0000000000FFFFFF000000000000000000FFFFFF0000000000FFFF00000000
          00000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF0000000000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF00000000
          000000FFFF00FFFFFF0000FFFF00FFFFFF00000000000000000000000000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF0000000000FFFF00000000
          0000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF000000
          0000FFFFFF000000000000000000FFFFFF00FFFFFF0000000000FFFF00000000
          000000FFFF00FFFFFF0000FFFF00FFFFFF000000000000000000000000000000
          00000000000000FFFF0000000000FFFFFF00FFFFFF0000000000FFFF00000000
          0000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
          FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF0000000000FFFF00000000
          000000FFFF00FFFFFF0000000000000000000000000000000000000000000000
          000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
          00000000000000FFFF00FFFFFF0000FFFF00000000000000000000FFFF000000
          0000FFFFFF00FFFFFF000000000000000000FFFFFF0000000000FF00FF00FF00
          FF00FF00FF000000000000000000000000000000000000FFFF0000000000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF000000000000FFFF0000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF0000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF000000000000FFFF0000000000FFFFFF00FFFFFF000000
          000000000000FFFFFF0000000000FFFFFF00FFFFFF0000000000FF00FF00FF00
          FF00FF00FF000000000000FFFF000000000000000000FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF0000000000FFFFFF0000000000FF00FF00FF00FF00FF00
          FF00000000000000FF0000000000FF00FF0000000000FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF000000000000000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF0000000000FF00FF00FF00FF000000000000000000000000000000
          0000000000000000000000000000FF00FF00FF00FF00FF00FF00}
      end
    end
  end
  object pnlMain: TPanel [1]
    Left = 0
    Top = 0
    Width = 537
    Height = 324
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    inline frDoc: TfrDoc
      Left = 0
      Top = 0
      Width = 537
      Height = 324
      Align = alClient
      TabOrder = 0
      inherited pnlMain: TPanel
        Width = 537
        Height = 324
        inherited pnlTop: TPanel
          Width = 537
          inherited pnlToggleShowInactiveDocItems: TPanel
            Left = 505
          end
        end
        inherited pnlBottom: TPanel
          Top = 299
          Width = 537
          inherited pnlCount: TPanel
            Left = 463
          end
        end
        inherited pnlGrid: TPanel
          Width = 537
          Height = 274
          inherited grdClonedDocItems: TAbmesDBGrid
            Width = 537
            Height = 274
          end
        end
      end
      inherited dsData: TDataSource
        DataSet = cdsFakeDoc
      end
    end
  end
  inherited alActions: TActionList
    inherited actForm: TAction
      Caption = #1052#1048#1048#1054
    end
  end
  object cdsFakeDoc: TAbmesClientDataSet
    Aggregates = <>
    Params = <>
    Left = 8
    Top = 320
    object cdsFakeDocDOC_BRANCH_CODE: TAbmesFloatField
      FieldName = 'DOC_BRANCH_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsFakeDocDOC_CODE: TAbmesFloatField
      FieldName = 'DOC_CODE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object dsFakeDoc: TDataSource
    DataSet = cdsFakeDoc
    Left = 40
    Top = 320
  end
end
