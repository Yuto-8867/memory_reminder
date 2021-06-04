Rails.application.routes.draw do

  get 'anniversaries/index'

  resources :anniversaries, only:[:index]
  resources :posts

  root to: 'homes#top'
  devise_for :users

  resources :users, only:[:show]

  get 'homes/about'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
