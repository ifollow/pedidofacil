json.array!(@produtos) do |produto|
  json.extract! produto, :id, :nome, :preco, :cardapio_id, :estabelecimento_id
  json.url produto_url(produto, format: :json)
end
