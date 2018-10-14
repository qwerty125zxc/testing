Rails.application.routes.draw do
  get '/musers', to: 'musers#show'
  post '/login', to: 'musers#login'

  root 'pages#index'

  resources :musers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
