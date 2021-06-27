Rails.application.routes.draw do

  get 'reconciliations/page1' => "reconciliations#page1", as: 'page1'
  get 'reconciliations/page2' => "reconciliations#page2", as: 'page2'
  get 'reconciliations/page3' => "reconciliations#page3", as: 'page3'
  get 'reconciliations/page4' => "reconciliations#page4", as: 'page4'
  get 'reconciliations/page5' => "reconciliations#page5", as: 'page5'
  get 'reconciliations/page6' => "reconciliations#page6", as: 'page6'
  get 'reconciliations/page7' => "reconciliations#page7", as: 'page7'
  get 'reconciliations/page8' => "reconciliations#page8", as: 'page8'
  get 'reconciliations/page9' => "reconciliations#page9", as: 'page9'
  get 'reconciliations/page10' => "reconciliations#page10", as: 'page10'
  get 'reconciliations/page11' => "reconciliations#page11", as: 'page11'
  get 'reconciliations/page12' => "reconciliations#page12", as: 'page12'
  get 'reconciliations/page13' => "reconciliations#page13", as: 'page13'
  get 'reconciliations/page14' => "reconciliations#page14", as: 'page14'



  resources :sharings, only: [:new,:create,:show,:edit,:update,:destroy]
  resources :meetings
  resources :notifications, only: [:index,:destroy]

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
