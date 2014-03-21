class GestorController < ApplicationController
  def index
  	if session[:logged]
      @pedidos = Pedido.where("")
  	else
  		redirect_to :controller => "acesso", :action => "index"
  	end
  end

   def reset_session
    session :off  
    redirect_to root_path
  end

end
