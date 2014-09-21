Rails.application.routes.draw do
  resources :users, only: [:show, :index] do
    resources :photos, only: [:index, :create, :destroy]
    resources :videos, only: [:index, :create, :destroy]
    post "photos/profpic"
  end

  get 'welcome/index'

  devise_for :users

  root 'welcome#index'

end
