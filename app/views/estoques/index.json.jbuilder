json.array!(@estoques) do |estoque|
  json.extract! estoque, :id, :produto_id, :quantidade
  json.url estoque_url(estoque, format: :json)
end
