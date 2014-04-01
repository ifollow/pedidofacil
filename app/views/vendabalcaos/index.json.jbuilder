json.array!(@vendabalcaos) do |vendabalcao|
  json.extract! vendabalcao, :id, :total, :dinheiro, :cartao, :cheque, :nota, :estabelecimento_id, :funcionario_id
  json.url vendabalcao_url(vendabalcao, format: :json)
end
