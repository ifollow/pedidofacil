json.array!(@vendamesas) do |vendamesa|
  json.extract! vendamesa, :id, :total, :dinheiro, :cartao, :cheque, :nota, :mesa_id, :estabelecimento_id, :funcionario_id
  json.url vendamesa_url(vendamesa, format: :json)
end
