Rails.application.routes.draw do
  get 'post/index'
  get 'users/index'
  root 'homes#top'
  get 'homes/about' => 'homes#about'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
