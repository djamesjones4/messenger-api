Rails.application.routes.draw do
  resources :messages
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  #TODO: add route for getting by from_user_id
  # get '/messages/:from_user_id', to: messages#getFromUser
end
