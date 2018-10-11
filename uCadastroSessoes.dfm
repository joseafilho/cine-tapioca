inherited fmCadastroSessoes: TfmCadastroSessoes
  Caption = 'Cadastro de Sess'#245'es'
  PixelsPerInch = 96
  TextHeight = 19
  inherited pcPrincipal: TPageControl
    inherited tsEdit: TTabSheet
      inherited pnEdits: TPanel
        object Id: TLabel
          Left = 6
          Top = 13
          Width = 15
          Height = 19
          Caption = 'Id'
        end
        object Label1: TLabel
          Left = 6
          Top = 69
          Width = 42
          Height = 19
          Caption = 'Nome'
        end
        object Label2: TLabel
          Left = 6
          Top = 120
          Width = 34
          Height = 19
          Caption = 'Hora'
        end
        object edId: TDBEdit
          Left = 6
          Top = 32
          Width = 83
          Height = 27
          DataField = 'ID'
          DataSource = dsDados
          TabOrder = 0
        end
        object edNome: TDBEdit
          Left = 6
          Top = 88
          Width = 435
          Height = 27
          DataField = 'NOME'
          DataSource = dsDados
          TabOrder = 1
        end
        object tpHora: TDateTimePicker
          Left = 6
          Top = 145
          Width = 137
          Height = 27
          Date = 43384.678463402780000000
          Time = 43384.678463402780000000
          Kind = dtkTime
          TabOrder = 2
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 66
          Top = 240
          Width = 311
          Height = 27
          DataField = 'SALA'
          DataSource = dsDados
          KeyField = 'ID'
          ListField = 'NOME'
          ListSource = DataSource1
          TabOrder = 3
        end
      end
    end
  end
  inherited qrDados: TFDQuery
    SQL.Strings = (
      'SELECT * FROM SESSOES')
    object qrDadosID: TFDAutoIncField
      DisplayLabel = 'Id'
      FieldName = 'ID'
      ReadOnly = True
    end
    object qrDadosNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 50
    end
    object qrDadosHORA: TTimeField
      DisplayLabel = 'Hora'
      FieldName = 'HORA'
      Origin = 'HORA'
      Required = True
    end
    object qrDadosFILME: TIntegerField
      FieldName = 'FILME'
      Origin = 'FILME'
      Required = True
    end
    object qrDadosSALA: TIntegerField
      FieldName = 'SALA'
      Origin = 'SALA'
      Required = True
    end
  end
  object FDQuery1: TFDQuery
    Connection = dmConn.fcConn
    SQL.Strings = (
      'SELECT * FROM SALAS')
    Left = 32
    Top = 296
    object FDQuery1ID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQuery1NOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 50
    end
    object FDQuery1CAPACIDADE: TIntegerField
      FieldName = 'CAPACIDADE'
      Origin = 'CAPACIDADE'
      Required = True
    end
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 32
    Top = 352
  end
end
