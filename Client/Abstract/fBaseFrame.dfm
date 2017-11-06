object BaseFrame: TBaseFrame
  Left = 0
  Top = 0
  Width = 320
  Height = 240
  TabOrder = 0
  object alActions: TActionList
    Images = dmMain.ilActions
    object actFrame: TAction
      OnExecute = actFrameExecute
      OnUpdate = actFrameUpdate
    end
  end
end
