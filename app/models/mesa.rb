class Mesa < ActiveRecord::Base
  belongs_to :estabelecimento
  has_many :produtos
end
