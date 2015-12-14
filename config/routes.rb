Rails.application.routes.draw do
  
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'welcome#index'
  
  get 'current_temperature' => 'welcome#current_temperature'
  get 'number_of_readings/:id' => 'customer#number_of_readings'
  get 'average_temperature' => 'statistics#average_temperature'
  get 'maximum_temperature' => 'statistics#maximum_temperature'
  get 'customer_low_high/:id' => 'statistics#customer_low_high'
  
  get 'create_customer' => 'customer#create_customer'
  post 'create_customer' => 'customer#create_customer'
  get 'list_customer' => 'customer#list_customer'
  get 'customer_data' => 'customer#customer_data'
<<<<<<< HEAD
  post 'customer_data' => 'customer#customer_data'
  get 'add_temperature' => 'customer#add_temperature'
  post 'add_temperature' => 'customer#add_temperature'
=======
  get 'remove' => 'customer#remove'
  post 'remove' => 'customer#remove'
  
  get 'update_customer' => 'customer#update_customer'
  post 'update_customer' => 'customer#update_customer'
<<<<<<< HEAD
  get 'destroy' => 'customer#destroy'
  post 'destroy' => 'customer#destroy'
  
  get 'create_temp' => 'customer#create_temp'
  post 'create_temp' => 'customer#create_temp'
  
  get 'delete' => 'customer#delete'
=======
>>>>>>> f71fdf658606582fb7494bb70a2555e08bbe70b7
  
>>>>>>> origin/master
  
  
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
