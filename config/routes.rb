Rails.application.routes.draw do
  resources :authors, only:[:index, :show, :new, :create, :edit, :update]
  resources :posts, only:[:index, :show, :new, :create, :edit, :update]

  # Helper            HTTP Verb	  Path	                  Controller#Action
  # Path / Url
  # authors_path	    GET	   /authors(.:format)	          authors#index
  #                   POST	 /authors(.:format)	          authors#create
  # new_author_path	  GET	   /authors/new(.:format)	      authors#new
  # edit_author_path	GET	   /authors/:id/edit(.:format)	authors#edit
  # author_path	      GET	   /authors/:id(.:format)	      authors#show
  #                   PATCH	 /authors/:id(.:format)	      authors#update
  #                   PUT	   /authors/:id(.:format)	      authors#update
  # posts_path	      GET	   /posts(.:format)	            posts#index
  #                   POST	 /posts(.:format)	            posts#create
  # new_post_path	    GET	   /posts/new(.:format)	        posts#new
  # edit_post_path	  GET	   /posts/:id/edit(.:format)	  posts#edit
  # post_path	        GET	   /posts/:id(.:format)	        posts#show
  #                   PATCH	 /posts/:id(.:format)	        posts#update
  #                   PUT	   /posts/:id(.:format)	        posts#update


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
