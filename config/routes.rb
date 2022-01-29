Rails.application.routes.draw do
  root "homes#top"

  namespace :users do
    get 'sessions/new_guest'
  end
  
  devise_for :users
  devise_scope :user do
    post 'users/guest_sign_in', to: 'users/sessions#new_guest'
  end

  resources :posts do
    resource :favorite,only:[:create,:destroy]
end
end

