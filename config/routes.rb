Rails.application.routes.draw do
  get 'cardapio/index'
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :clients, only: %i[create]
  resources :cardapios, only: %i[index]
end
