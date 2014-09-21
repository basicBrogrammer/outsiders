Rails.application.routes.draw do
  resources :users, only: [:show, :index] do
    resources :photos
    post "photos/profpic"
  end

  get 'welcome/index'

  devise_for :users

  root 'welcome#index'

end
