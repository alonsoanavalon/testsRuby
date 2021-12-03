Rails.application.routes.draw do

  root to: "home#index"

  get 'home/index'
  get "/bienvenida", to: "home#index"


  get "/articles", to:"articles#index"
  get "/articles/new", to:"articles#new"
  post "/articles", to:"articles#create"
  get "/articles/:id", to:"articles#show"
  delete "/articles/:id", to:"articles#destroy"
  get "/articles/:id/edit", to:"articles#edit"
  patch "/articles/:id", to:"articles#update", as: :article
  

  get "/productos", to:"productos#index"
  post "/productos", to:"productos#create"
  get "/productos/:id", to:"productos#show"
  get "/productos/:id/edit", to:"productos#edit"
  patch "/productos/:id", to:"productos#update", as: :producto  
  delete "/productos/:id", to:"productos#destroy"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
