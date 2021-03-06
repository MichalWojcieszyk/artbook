Rails.application.routes.draw do
  
  

  #get 'museums/index'

  #get 'museums/show'

  #get 'museums/create'

  #get 'museums/new'

  #get 'museums/destroy'

  #get 'museums/edit'

  #get 'museums/update'

  #get 'author_categories/index'

  get 'author_categories/show'

  get 'author_categories/new'

  get 'author_categories/create'

  get 'author_categories/edit'

  get 'author_categories/update'

  get 'author_categories/destroy'

  resources :categories

  resources :museums
    
  resources :arts do
    resources :art_comments
  end
  
  resources :arts
  resources :author_categories

  resources :authors do
    resources :author_comments
  end

  devise_for :users
  resources :users
  root 'categories#index'

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
