class Mesa < ActiveRecord::Base
  belongs_to :estabelecimento
  has_many :produtos
  has_many :vendamesa
end
