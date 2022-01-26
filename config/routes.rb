Rails.application.routes.draw do
  get 'favorites/index'
  get 'post/index'
  get 'users/index'
  root 'homes#top'
  get 'homes/about' => 'homes#about'
  post '/homes/guest_sign_in', to: 'homes#guest_sign_in'
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    passwords: 'users/passwords'
  }

  resources :posts do
    resource :favorite,only:[:create,:destroy]
end
end
