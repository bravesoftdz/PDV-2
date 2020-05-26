object dm: Tdm
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 408
  Width = 679
  object fd: TFDConnection
    Params.Strings = (
      'Server=localhost'
      'Database=pdv'
      'User_Name=root'
      'Password=MaverickV8'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 64
    Top = 48
  end
  object tbCargos: TFDTable
    IndexFieldNames = 'id_cargo'
    Connection = fd
    UpdateOptions.UpdateTableName = 'cargos'
    TableName = 'cargos'
    Left = 64
    Top = 112
  end
  object queryCargos: TFDQuery
    Connection = fd
    SQL.Strings = (
      'select * from cargos order by nm_cargo asc')
    Left = 40
    Top = 192
    object queryCargosid_cargo: TFDAutoIncField
      FieldName = 'id_cargo'
      Origin = 'id_cargo'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object queryCargosnm_cargo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nm_cargo'
      Origin = 'nm_cargo'
      Size = 25
    end
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    VendorLib = 'C:\Users\FlexSmart\Documents\Delphi\PDV\trunk\lib\libmySQL.dll'
    Left = 568
    Top = 48
  end
  object dsCargos: TDataSource
    DataSet = queryCargos
    Left = 120
    Top = 192
  end
  object tbFuncionario: TFDTable
    IndexFieldNames = 'id_funcionario'
    Connection = fd
    UpdateOptions.UpdateTableName = 'funcionarios'
    TableName = 'funcionarios'
    Left = 136
    Top = 112
  end
  object queryFuncionario: TFDQuery
    Connection = fd
    SQL.Strings = (
      'select * from funcionarios')
    Left = 216
    Top = 192
    object queryFuncionarioid_funcionario: TFDAutoIncField
      FieldName = 'id_funcionario'
      Origin = 'id_funcionario'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object queryFuncionariocargo: TStringField
      DisplayLabel = 'Cargo'
      FieldName = 'cargo'
      Origin = 'cargo'
      Required = True
      Size = 25
    end
    object queryFuncionarionm_funcionario: TStringField
      DisplayLabel = 'Funcionario'
      FieldName = 'nm_funcionario'
      Origin = 'nm_funcionario'
      Required = True
      Size = 25
    end
    object queryFuncionariocpf: TStringField
      DisplayLabel = 'CPF'
      FieldName = 'cpf'
      Origin = 'cpf'
      Required = True
      Size = 15
    end
    object queryFuncionariorg: TStringField
      DisplayLabel = 'RG'
      FieldName = 'rg'
      Origin = 'rg'
      Required = True
    end
    object queryFuncionariotelefone: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Telefone'
      FieldName = 'telefone'
      Origin = 'telefone'
      Size = 15
    end
    object queryFuncionariologradouro: TStringField
      DisplayLabel = 'Logradouro'
      FieldName = 'logradouro'
      Origin = 'logradouro'
      Required = True
      Size = 50
    end
    object queryFuncionarionumero: TIntegerField
      DisplayLabel = 'Numero'
      FieldName = 'numero'
      Origin = 'numero'
      Required = True
    end
    object queryFuncionariobairro: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'bairro'
      Origin = 'bairro'
      Required = True
      Size = 50
    end
    object queryFuncionariocidade: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'cidade'
      Origin = 'cidade'
      Required = True
      Size = 50
    end
    object queryFuncionariouf: TStringField
      DisplayLabel = 'UF'
      FieldName = 'uf'
      Origin = 'uf'
      Required = True
      Size = 2
    end
    object queryFuncionariocep: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'CEP'
      FieldName = 'cep'
      Origin = 'cep'
      Size = 10
    end
    object queryFuncionariodata_cadastro: TDateField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Data Cadastro'
      FieldName = 'data_cadastro'
      Origin = 'data_cadastro'
    end
  end
  object dsFuncionario: TDataSource
    DataSet = queryFuncionario
    Left = 304
    Top = 192
  end
  object tbUsuarios: TFDTable
    IndexFieldNames = 'id_usuario'
    Connection = fd
    UpdateOptions.UpdateTableName = 'pdv.usuarios'
    TableName = 'pdv.usuarios'
    Left = 216
    Top = 112
  end
  object queryUsuarios: TFDQuery
    Connection = fd
    SQL.Strings = (
      'select *from usuarios')
    Left = 392
    Top = 192
    object queryUsuariosid_usuario: TFDAutoIncField
      DisplayLabel = 'ID'
      FieldName = 'id_usuario'
      Origin = 'id_usuario'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object queryUsuariosnome: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nome'
      FieldName = 'nome'
      Origin = 'nome'
      Size = 30
    end
    object queryUsuariosusuario: TStringField
      DisplayLabel = 'Usuario'
      FieldName = 'usuario'
      Origin = 'usuario'
      Required = True
      Size = 30
    end
    object queryUsuariossenha: TStringField
      DisplayLabel = 'Senha'
      FieldName = 'senha'
      Origin = 'senha'
      Required = True
      Size = 25
    end
    object queryUsuarioscargo: TStringField
      DisplayLabel = 'Cargo'
      FieldName = 'cargo'
      Origin = 'cargo'
      Required = True
      Size = 25
    end
    object queryUsuariosid_funcionario: TIntegerField
      DisplayLabel = 'ID'
      FieldName = 'id_funcionario'
      Origin = 'id_funcionario'
      Required = True
      Visible = False
    end
  end
  object dsUsuarios: TDataSource
    DataSet = queryUsuarios
    Left = 464
    Top = 192
  end
  object tbFornecedor: TFDTable
    Connection = fd
    UpdateOptions.UpdateTableName = 'pdv.fornecedor'
    TableName = 'pdv.fornecedor'
    Left = 288
    Top = 112
  end
  object queryFornecedor: TFDQuery
    Connection = fd
    SQL.Strings = (
      'select *from fornecedor')
    Left = 536
    Top = 192
    object queryFornecedorid_fornecedor: TFDAutoIncField
      DisplayLabel = 'ID'
      FieldName = 'id_fornecedor'
      Origin = 'id_fornecedor'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object queryFornecedornm_fornecedor: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'nm_fornecedor'
      Origin = 'nm_fornecedor'
      Required = True
      Size = 25
    end
    object queryFornecedorcpf_cnpj: TStringField
      DisplayLabel = 'CPF/CNPJ'
      FieldName = 'cpf_cnpj'
      Origin = 'cpf_cnpj'
      Required = True
      Size = 15
    end
    object queryFornecedorrg_ie: TStringField
      DisplayLabel = 'RG/IE'
      FieldName = 'rg_ie'
      Origin = 'rg_ie'
      Required = True
    end
    object queryFornecedortelefone: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Telefone'
      FieldName = 'telefone'
      Origin = 'telefone'
      Size = 15
    end
    object queryFornecedorlogradouro: TStringField
      DisplayLabel = 'Logradouro'
      FieldName = 'logradouro'
      Origin = 'logradouro'
      Required = True
      Size = 50
    end
    object queryFornecedornumero: TIntegerField
      DisplayLabel = 'Numero'
      FieldName = 'numero'
      Origin = 'numero'
      Required = True
    end
    object queryFornecedorbairro: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'bairro'
      Origin = 'bairro'
      Required = True
      Size = 50
    end
    object queryFornecedorcidade: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'cidade'
      Origin = 'cidade'
      Required = True
      Size = 50
    end
    object queryFornecedoruf: TStringField
      DisplayLabel = 'UF'
      FieldName = 'uf'
      Origin = 'uf'
      Required = True
      Size = 2
    end
    object queryFornecedorcep: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'CEP'
      FieldName = 'cep'
      Origin = 'cep'
      Size = 10
    end
    object queryFornecedortipo_produto: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tipo Produto'
      FieldName = 'tipo_produto'
      Origin = 'tipo_produto'
      Size = 50
    end
    object queryFornecedordata_cadastro: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'data_cadastro'
      Origin = 'data_cadastro'
      Visible = False
    end
    object queryFornecedortp_pessoa: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Pessoa'
      FieldName = 'tp_pessoa'
      Origin = 'tp_pessoa'
      Size = 1
    end
  end
  object dsFonecedor: TDataSource
    DataSet = queryFornecedor
    Left = 608
    Top = 192
  end
end
