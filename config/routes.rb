Rails.application.routes.draw do
resources :users 
resources :swings
  get 'users/new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#new'
  post '/signup', to: 'sessions#create'
  get  '/signup', to: 'users#new'  #sign up now from login to create account page
  delete '/logout', to: 'sessions#destroy'
get 'users/create'
  post 'users/create'
  get 'users/show'
get 'pages/home'
  get 'pages/contact'
  get 'pages/browse'
  get 'swings/show'
  post 'swings/new'
  root 'pages#home'
  get 'pages/search'
  
 post 'pages/display'
  get 'pages/post'
  post 'swings/show'
  get 'swings/show', to: 'swings#show'


  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
