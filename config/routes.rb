Rails.application.routes.draw do
  root "top#index"
  
  resources :answers
  resources :members
  resource :session, only: [:create, :destroy]
  resources :admins
end
