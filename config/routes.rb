Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :restaurants, only: %i[index show new create] do
    resources :reviews, only: %i[create]
  end
  root 'restaurants#index'
end
