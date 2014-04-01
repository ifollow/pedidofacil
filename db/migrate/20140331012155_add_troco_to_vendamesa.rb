class AddTrocoToVendamesa < ActiveRecord::Migration
  def change
    add_column :vendamesas, :troco, :decimal
  end
end
