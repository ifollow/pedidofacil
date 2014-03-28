class CreateEstoques < ActiveRecord::Migration
  def change
    create_table :estoques do |t|
      t.references :produto, index: true
      t.integer :quantidade

      t.timestamps
    end
  end
end
