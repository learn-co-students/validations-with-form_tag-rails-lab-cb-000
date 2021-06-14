Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 resources :authors, only:[:index,:create,:show,:new]
 resources :posts, only:[:index,:create,:show,:new, :edit, :update]
end
