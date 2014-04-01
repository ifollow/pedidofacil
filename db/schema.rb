# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140331175021) do

  create_table "caixaanos", force: true do |t|
    t.date     "datcai"
    t.decimal  "dinheiro"
    t.decimal  "cheque"
    t.decimal  "cartao"
    t.decimal  "prazo"
    t.decimal  "pagtodiv"
    t.decimal  "receb"
    t.decimal  "salant"
    t.decimal  "salprox"
    t.decimal  "salcaixa"
    t.integer  "estabelecimento_id"
    t.string   "obscai"
    t.time     "hormov"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "caixaanos", ["estabelecimento_id"], name: "index_caixaanos_on_estabelecimento_id"

  create_table "caixadia", force: true do |t|
    t.date     "datcai"
    t.decimal  "dinheiro"
    t.decimal  "cheque"
    t.decimal  "cartao"
    t.decimal  "prazo"
    t.decimal  "pagtodiv"
    t.decimal  "receb"
    t.decimal  "salant"
    t.decimal  "salprox"
    t.decimal  "salcaixa"
    t.integer  "estabelecimento_id"
    t.string   "obscai"
    t.time     "hormov"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "caixadia", ["estabelecimento_id"], name: "index_caixadia_on_estabelecimento_id"

  create_table "cardapios", force: true do |t|
    t.string   "name"
    t.integer  "estabelecimento_id"
    t.text     "descricao"
    t.boolean  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cardapios", ["estabelecimento_id"], name: "index_cardapios_on_estabelecimento_id"

  create_table "estabelecimentos", force: true do |t|
    t.string   "nome"
    t.string   "endereco"
    t.string   "telefone"
    t.string   "razao_social"
    t.string   "responsavel"
    t.string   "tel_responsavel"
    t.string   "image_restaurante"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "codigo"
    t.string   "cnpj"
    t.string   "cidade"
    t.string   "inscricao_estadual"
  end

  create_table "estoques", force: true do |t|
    t.integer  "produto_id"
    t.integer  "quantidade"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "estabelecimento_id"
  end

  add_index "estoques", ["estabelecimento_id"], name: "index_estoques_on_estabelecimento_id"
  add_index "estoques", ["produto_id"], name: "index_estoques_on_produto_id"

  create_table "funcionarios", force: true do |t|
    t.integer  "estabelecimento_id"
    t.string   "nome"
    t.string   "endereco"
    t.string   "cidade"
    t.string   "telefone"
    t.string   "celular"
    t.string   "cpf"
    t.string   "rg"
    t.decimal  "salario"
    t.decimal  "percentual"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "funcionarios", ["estabelecimento_id"], name: "index_funcionarios_on_estabelecimento_id"

  create_table "mesas", force: true do |t|
    t.integer  "numero"
    t.integer  "estabelecimento_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "mesas", ["estabelecimento_id"], name: "index_mesas_on_estabelecimento_id"

  create_table "pedidos", force: true do |t|
    t.integer  "produto_id"
    t.integer  "mesa_id"
    t.text     "observacao"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "estabelecimento_id"
    t.integer  "quantidade"
    t.integer  "funcionario_id"
    t.date     "datapedido"
    t.boolean  "flag"
  end

  add_index "pedidos", ["estabelecimento_id"], name: "index_pedidos_on_estabelecimento_id"
  add_index "pedidos", ["funcionario_id"], name: "index_pedidos_on_funcionario_id"
  add_index "pedidos", ["mesa_id"], name: "index_pedidos_on_mesa_id"
  add_index "pedidos", ["produto_id"], name: "index_pedidos_on_produto_id"

  create_table "produtos", force: true do |t|
    t.string   "nome"
    t.decimal  "preco"
    t.integer  "cardapio_id"
    t.integer  "estabelecimento_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "produtos", ["cardapio_id"], name: "index_produtos_on_cardapio_id"
  add_index "produtos", ["estabelecimento_id"], name: "index_produtos_on_estabelecimento_id"

  create_table "vendabalcaos", force: true do |t|
    t.decimal  "total"
    t.decimal  "dinheiro"
    t.decimal  "cartao"
    t.decimal  "cheque"
    t.decimal  "nota"
    t.integer  "estabelecimento_id"
    t.integer  "funcionario_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal  "troco"
    t.integer  "pedido_id"
  end

  add_index "vendabalcaos", ["estabelecimento_id"], name: "index_vendabalcaos_on_estabelecimento_id"
  add_index "vendabalcaos", ["funcionario_id"], name: "index_vendabalcaos_on_funcionario_id"
  add_index "vendabalcaos", ["pedido_id"], name: "index_vendabalcaos_on_pedido_id"

  create_table "vendamesas", force: true do |t|
    t.decimal  "total"
    t.decimal  "dinheiro"
    t.decimal  "cartao"
    t.decimal  "cheque"
    t.decimal  "nota"
    t.integer  "mesa_id"
    t.integer  "estabelecimento_id"
    t.integer  "funcionario_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal  "troco"
  end

  add_index "vendamesas", ["estabelecimento_id"], name: "index_vendamesas_on_estabelecimento_id"
  add_index "vendamesas", ["funcionario_id"], name: "index_vendamesas_on_funcionario_id"
  add_index "vendamesas", ["mesa_id"], name: "index_vendamesas_on_mesa_id"

end
