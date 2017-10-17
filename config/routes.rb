Rails.application.routes.draw do

  resources :recipes, only: [:index, :show, :new, :create, :destroy] do
  resources :ingredients, only:[:index, :show, :new, :create, :destroy]
end
  root "recipes#index"

end
