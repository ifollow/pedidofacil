class FechamentoController < ApplicationController
  def mesa
  	 @mesa = Mesa.find(params[:id])
  	 @pedidos = Pedido.where("mesa_id =? AND estabelecimento_id =? AND Date(created_at) >=? AND flag =?", params[:id], session[:id_estabelecimento], Date.today, false)
  end

  def balcao
  	@pedido = Pedido.where("estabelecimento_id =? AND id =?", session[:id_estabelecimento], params[:id])
  end

end
