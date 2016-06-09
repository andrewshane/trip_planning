Rails.application.routes.draw do

  devise_for :users
  root "destinations#index"

  # Routes for the Destination resource:
  # CREATE
  get "/destinations/new", :controller => "destinations", :action => "new"
  post "/create_destination", :controller => "destinations", :action => "create"

  # READ
  get "/destinations", :controller => "destinations", :action => "index"
  get "/destinations/:id", :controller => "destinations", :action => "show"

  # UPDATE
  get "/destinations/:id/edit", :controller => "destinations", :action => "edit"
  post "/update_destination/:id", :controller => "destinations", :action => "update"

  # DELETE
  get "/delete_destination/:id", :controller => "destinations", :action => "destroy"
  #------------------------------

  # Routes for the Daily resource:
  # CREATE
  get "/dailies/new", :controller => "dailies", :action => "new"
  post "/create_daily", :controller => "dailies", :action => "create"

  # READ
  get "/dailies", :controller => "dailies", :action => "index"
  get "/dailies/:id", :controller => "dailies", :action => "show"

  # UPDATE
  get "/dailies/:id/edit", :controller => "dailies", :action => "edit"
  post "/update_daily/:id", :controller => "dailies", :action => "update"

  # DELETE
  get "/delete_daily/:id", :controller => "dailies", :action => "destroy"
  #------------------------------


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
