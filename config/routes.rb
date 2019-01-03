Rails.application.routes.draw do

  namespace :admin do
    resources :restaurants, only: [:index]
  end
  resources :restaurants do
    resources :reviews, only: [:index, :new, :create]
    collection do
      get 'top', to: "restaurants#top"
    end
    member do
      get 'chef', to: "restaurants#chef"
    end
  end
  resources :reviews, only: [:show, :edit, :update, :destroy]
  get "restaurants/:id", to: "restaurants#show"
  get "reviews/:id", to: "reviews#show"
  get "reviews/:id/edit", to: "reviews#edit"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
