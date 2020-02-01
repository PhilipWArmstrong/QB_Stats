Rails.application.routes.draw do
  resources :yards, only: [:index]
  resources :quarterbacks, only: [:index, :show] do 
    resources :yards, only: [:create]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
