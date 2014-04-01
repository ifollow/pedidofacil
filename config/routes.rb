Restaurante::Application.routes.draw do
  
 
  resources :vendabalcaos

  resources :vendamesas

  resources :caixadia

  resources :caixaanos

  resources :estoques

  resources :funcionarios

  get "gestor/index"

  get "acesso/index"
  
  get "gestor/reset_session"

  resources :pedidos

  resources :mesas

  resources :produtos

  resources :cardapios

  resources :estabelecimentos

  resources :acesso do 
   post "valida_user", :on => :collection
   end

  root 'acesso#index'

  get '/pedidos/fechar/:id', to: 'pedidos#fechar', as: 'fechar'

  get '/fechamento/mesa/:id', to: 'fechamento#mesa', as: 'fechamento_mesa'

  get '/fechamento/balcao/:id', to: 'fechamento#balcao', as: 'fechamento_balcao'  

 
end
