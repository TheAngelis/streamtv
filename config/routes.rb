Rails.application.routes.draw do


  get "dashboard/audio"
  match '/dashboard/audio',     to: 'dashboard#audio',       via: [:get, :post]

  get "admin/videos"
  match '/admin/video_edit/:id',     to: 'admin#video_edit',       via: [:get, :post]
  get "admin/videos"
  match '/admin/videos/:id',     to: 'admin#videos',       via: [:get, :post]

  #get "admin/audios"
  #match '/admin/video_edit/:id',     to: 'admin#audio_edit',       via: [:get, :post]


  resources :admin
  devise_for :users
  resources :dashboard

  resources :videos
  root to: "home#index"

  match '/users/:id',     to: 'users#show',       via: [:get, :post]
  #match ':controller(/:action(/:id))', :via => :get








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
