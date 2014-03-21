json.array!(@pedidos) do |pedido|
  json.extract! pedido, :id, :produto_id, :mesa_id, :observacao
  json.url pedido_url(pedido, format: :json)
end
