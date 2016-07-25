Rails.application.routes.draw do
  get 'inputdatas/index'

  get 'inputdatas/new'

  get 'inputdatas/create'

  get 'inputdatas/destroy'

  get 'welcome/index'

  

  root 'welcome#index'

  resources :words
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
