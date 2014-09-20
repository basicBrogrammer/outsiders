Rails.application.routes.draw do
  post 'photos/create'

  delete 'photos/destroy'

  get 'dashboard/show'

  get 'welcome/index'

  devise_for :users

  root 'welcome#index'

end
