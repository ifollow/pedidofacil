class CreateMesas < ActiveRecord::Migration
  def change
    create_table :mesas do |t|
      t.integer :numero
      t.references :estabelecimento, index: true

      t.timestamps
    end
  end
end
