Rails.application.routes.draw do
  devise_for :users
  devise_for :admins
  
  root 'home#index'
  get '/create' => 'post#create'
  post '/create_post' => 'post#new'
  get '/delete/:post_id'=>'post#delete'
  
  get '/test' => 'post#test'
  get '/seatPlan/:room_id' => 'post#seatPlan'
  get '/seatReview' => 'post#seatReview'
  get '/detailPost/:post_id' => 'post#detailPost'

  
  get '/category' => 'home#category_perfo'
  get '/categorySport' => 'home#category_sport'
  get '/categoryTheater' => 'home#category_theater'
  get '/info/:place_id' => 'home#info'  
  get '/category2' => 'home#category2'
  
  get '/r_perfo' => "home#r_perfo"
  get '/r_sport' => "home#r_sport"
  get '/r_theater' => "home#r_theater"
  get 'r_perfo_place' => 'home#r_perfo_place'
  
  
  get '/perfoInfo/:performance_id' => 'home#perfoInfo'
  
  
  get '/place' => "post#place_1"
  get '/place_1' => 'post#place_1'

  get '/testing' => "post#testing"
  
  get '/selVenue' => "post#selVenue"
  get '/selSection' => "post#selSection"
  get '/selRow' => "post#selRow"
  get '/selRoom' => "post#selRoom"
  get '/selNumber' => "post#selNumber"
  get '/about' => "home#about"
  
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
