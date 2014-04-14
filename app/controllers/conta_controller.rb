class ContaController < ApplicationController

  def imprimir
  	@pedidos = Pedido.where("mesa_id =? AND estabelecimento_id =? AND created_at >=? AND flag =?", params[:id], session[:id_estabelecimento], DateTime.now.beginning_of_day, false)
  	@mesa = params[:id]
  end

end
