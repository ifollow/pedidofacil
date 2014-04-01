class AcessoController < ApplicationController
  def index
    if session[:logged]

      redirect_to :controller => 'gestor', :action => 'index'
      
    end
  end

  def valida_user
   
   @estabelecimento = Estabelecimento.where("codigo = ?", params[:codigo]).first

  if @estabelecimento
  	session[:logged] = true
    session[:id_estabelecimento] = @estabelecimento.id
  	redirect_to :controller => "gestor", :action => "index"
  else
    flash[:error] = "Código de acesso incorreto!"
  	redirect_to root_path
  end

  end

end
