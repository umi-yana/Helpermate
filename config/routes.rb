Rails.application.routes.draw do
  get 'post/index'
  get 'users/index'
  root 'homes#top'
  get 'homes/about' => 'homes#about'
  post '/homes/guest_sign_in', to: 'homes#guest_sign_in'
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    passwords: 'users/passwords'
  }
end
