json.array!(@cardapios) do |cardapio|
  json.extract! cardapio, :id, :name, :estabelecimento_id, :descricao, :status
  json.url cardapio_url(cardapio, format: :json)
end
