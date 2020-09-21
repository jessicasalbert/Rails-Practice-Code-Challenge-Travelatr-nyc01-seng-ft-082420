Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :bloggers, only: [:show, :create, :new]
  resources :destinations, only: [:show]
  resources :posts, only: [:new, :update, :edit, :create, :show]
end
