json.array!(@funcionarios) do |funcionario|
  json.extract! funcionario, :id, :estabelecimento_id, :nome, :endereco, :cidade, :telefone, :celular, :cpf, :rg, :salario, :percentual
  json.url funcionario_url(funcionario, format: :json)
end
