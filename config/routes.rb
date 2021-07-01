Rails.application.routes.draw do
  resources :conversations
  resources :messages
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # get messages from a specific user based on conversation ID
  get '/by_conversation/', to: 'messages#getFromUser'
end
