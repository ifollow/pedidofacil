json.array!(@caixadia) do |caixadium|
  json.extract! caixadium, :id, :datcai, :dinheiro, :cheque, :cartao, :prazo, :pagtodiv, :receb, :salant, :salprox, :salcaixa, :estabelecimento_id, :obscai, :hormov
  json.url caixadium_url(caixadium, format: :json)
end
