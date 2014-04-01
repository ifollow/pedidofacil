json.array!(@caixaanos) do |caixaano|
  json.extract! caixaano, :id, :datcai, :dinheiro, :cheque, :cartao, :prazo, :pagtodiv, :receb, :salant, :salprox, :salcaixa, :estabelecimento_id, :obscai, :hormov
  json.url caixaano_url(caixaano, format: :json)
end
