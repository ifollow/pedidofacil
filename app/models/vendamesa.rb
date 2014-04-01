class Vendamesa < ActiveRecord::Base
  has_many :mesa
  has_many :estabelecimento
  has_many :funcionario
end
