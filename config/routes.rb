Rails.application.routes.draw do
  resources :cocktails, only: [:index, :show, :create, :new] do
    resources :doses, only: [:create, :new]
  end
  resources :doses, only: [:destroy]
  root 'cocktails#index'
end
  # get 'doses/create'

  # get 'doses/new'

  # get 'doses/destroy'

  # get 'cocktails/index'

  # get 'cocktails/show'

  # get 'cocktails/create'

  # get 'cocktails/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

