Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :bloggers, only: [:show, :create, :new, :index]
  resources :destinations, only: [:show, :index]
  resources :posts, only: [:index,:new, :update, :edit, :create, :show]
end
