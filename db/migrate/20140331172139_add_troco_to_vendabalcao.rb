class AddTrocoToVendabalcao < ActiveRecord::Migration
  def change
    add_column :vendabalcaos, :troco, :decimal
  end
end
