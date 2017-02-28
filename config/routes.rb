Rails.application.routes.draw do

  resources :recipes, only: [:index, :show, :new, :create, :destroy] do
  resources :ingredients, only:[:index, :show, :new, :create, :destroy]
end
  root "recipes#index"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
