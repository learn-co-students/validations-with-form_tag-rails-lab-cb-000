Rails.application.routes.draw do
  resources :authors, only: [:new, :create, :edit, :update, :show]
  resources :posts, only: [:new, :create, :edit, :update, :show]
end
