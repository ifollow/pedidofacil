json.array!(@estabelecimentos) do |estabelecimento|
  json.extract! estabelecimento, :id, :nome, :endereco, :telefone, :razao_social, :responsavel, :tel_responsavel, :image_restaurante
  json.url estabelecimento_url(estabelecimento, format: :json)
end
