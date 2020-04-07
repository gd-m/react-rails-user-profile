Rails.application.routes.draw do
  
  resources :profiles
  #signup
  post '/api/v1/signup', to: "api/v1/users#create" 

#sessions
  post '/api/v1/login', to: 'api/v1/sessions#create'
  delete '/api/v1/logout', to: 'api/v1/sessions#destroy'
  get "/api/v1/logged_in", to: "api/v1/sessions#get_current_user"


  # namespace :api do
  #   namespace :v1 do
  #     resources :users
  #   end
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
