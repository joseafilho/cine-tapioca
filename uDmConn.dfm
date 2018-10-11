object dmConn: TdmConn
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 193
  Width = 298
  object fcConn: TFDConnection
    Params.Strings = (
      'Database=127.0.01:C:\Projetos\CineTapioca\CINETAPIOCA.FDB'
      'User_Name=sysdba'
      'Password=masterkey'
      'DriverID=FB')
    LoginPrompt = False
    Left = 136
    Top = 80
  end
end
