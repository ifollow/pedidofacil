class GestorController < ApplicationController
  def index
  	if session[:logged]
      @pedidos = Pedido.where("")

      @estabelecimento = Estabelecimento.find(session[:id_estabelecimento])

      @produtos = Produto.count

      @mesas = Mesa.count

      @cardapios = Cardapio.count

      if @produtos <= 0
        @mensagem_produtos = "Você não possui produtos cadastrados!" 
      end
      
       if @mesas <= 0
         @mensagem_mesas = "Você ainda não cadastrou suas mesas!"
       end

       if @cardapios <= 0
         @mensagem_cardapios = "Você ainda não cadastrou seus cardápios!"
       end
        
      


  	else
  		redirect_to :controller => "acesso", :action => "index"
  	end
  end

   def reset_session
    session :off  
    redirect_to root_path
  end

end
