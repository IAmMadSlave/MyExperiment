Rails.application.routes.draw do
  resources :brite_td_aswaxman_rt_waxmen

  resources :create_fnss_simple_rings

  resources :brite_td_asbarabasi_rt_waxmen

  resources :brite_rt_waxmen

  resources :brite_rt_barabasis

  resources :brite_as_waxmen

  resources :brite_as_barabasis

  resources :fnss_datacenter_fattrees

  resources :fnss_datacenter_bcubes

  resources :fnss_datacenter_three_tiers

  resources :fnss_datacenter_two_tiers

  resources :fnss_simple_dumbbells

  resources :fnss_simple_kary_trees

  resources :fnss_simple_full_meshes

  resources :fnss_simple_stars

  resources :fnss_simple_lines

  get 'generator_forms/xml_download' => 'generator_forms#xml_download' , :as => 'generator_forms_xml_downloads'
  get 'generator_forms/xml_download/:id(.:format)' => 'generator_forms#xml_download' , :as => 'generator_forms_xml_download'
  
  resources :generator_forms

  resources :types

  resources :generators

  get 'fnss_datacenter/new'

  get 'fnss_simple/new'

  get 'create_new_model/new'

  resources :asbarabasi

  resources :experiments
  resources :sessions, only: [:new, :create, :destroy]
  resources :users

  root 'generator_forms#index'

  match '/signup',  to: 'users#new',            via: 'get'
  match '/signin',  to: 'sessions#new',         via: 'get'
  match '/signout', to: 'sessions#destroy',     via: 'delete'
  match '/help',    to: 'static_pages#help',    via: 'get'
  match '/about',   to: 'static_pages#about',   via: 'get'
  match '/contact', to: 'static_pages#contact', via: 'get'

  match '/models',  to: 'users#models',         via: 'get'

  resources :rocketfuel, :brite, :inet, :fnss_simple, :fnss_datacenter
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
