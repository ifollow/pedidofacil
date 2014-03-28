Restaurante::Application.routes.draw do
  
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

 
end
