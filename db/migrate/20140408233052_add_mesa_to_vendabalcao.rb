class AddMesaToVendabalcao < ActiveRecord::Migration
  def change
    add_reference :vendabalcaos, :mesa, index: true
  end
end
