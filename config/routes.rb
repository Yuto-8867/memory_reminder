Rails.application.routes.draw do

  get 'anniversaries/index'


  resources :posts do
    resource :favorites,only:[:create,:destroy]
    resources :post_comments,only:[:create,:destroy]
  end

  root to: 'homes#top'
  devise_for :users

  resources :users, only:[:show,:edit,:update] do
    resource :relationships, only: [:create, :destroy]
    get 'followings' => 'relationships#followings', as: 'followings'
    get 'followers' => 'relationships#followers', as: 'followers'

  end
  get 'homes/about'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
