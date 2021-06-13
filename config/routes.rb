Rails.application.routes.draw do

  resources :meetings
  resources :notifications, only: :index

  resources :messages, only: [:create]
  resources :rooms, only: [:create,:show]


  resources :posts do
    resource :favorites,only:[:create,:destroy]
    resources :post_comments,only:[:create,:destroy]
  end

  resources :tags do
    get 'posts', to: 'posts#search'
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
