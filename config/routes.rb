# Rails.application.routes.draw do
#   # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
#   # index
#   get 'restaurants', to: 'restaurants#index', as: :restaurants
#   # new and create
#   get 'restaurants/new', to: 'restaurants#new'
#   post 'restaurants', to: 'restaurants#create'
#   # show 1
#   get 'restaurants/:id', to: 'restaurants#show', as: :restaurant

#   resources :reviews, only: [:new, :create]
#   resources :reviews, only: [:destroy]
# end

Rails.application.routes.draw do
  resources :restaurants do
    resources :reviews, only: [:new, :create]
  end
  resources :reviews, only: [:destroy]
end
