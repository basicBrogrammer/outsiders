Rails.application.routes.draw do
  resources :users, only: [:show, :index] do
    resources :photos, only: [:index, :create, :update, :destroy]
    resources :videos, only: [:index, :create, :destroy]
  end

  get 'welcome/deer'
  get 'welcome/duck'
  get 'welcome/index'
  post 'welcome/index'
  post "welcome/like"
  post "welcome/dislike"


  devise_for :users

  root 'welcome#index'

end
