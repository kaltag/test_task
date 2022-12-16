Rails.application.routes.draw do
  root 'public#index'
  # resources :dishes
  # resources :ingredients

  post '/zakaz', to: 'public#push', as: :make_order
  get '/json', to: 'public#json_zakaz', as: :json_zakaz
end
