Rails.application.routes.draw do
  root 'root#index'
  get 'search/:query', to: 'search#index', as: :search
  resources :publications, only: [:index]
  resources :subjects, only: [:index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
