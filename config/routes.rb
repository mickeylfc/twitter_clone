Rails.application.routes.draw do
  devise_for :users
  resources :posts
  root :to => 'pages#index'

  get 'home' => 'pages#home'

  get '/user/:id' => 'pages#profile'

  get 'explore' => 'pages#explore'

  # get "/pages/user/:id" => "pages#show", as => "profile" 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
