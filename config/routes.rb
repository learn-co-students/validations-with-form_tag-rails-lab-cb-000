Rails.application.routes.draw do
 
  resources :posts, only: [ :show, :new, :edit, :create, :update ]
  resources :authors, only: [ :show, :new, :edit, :create, :update ]

end
