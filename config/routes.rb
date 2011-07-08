Auth::Application.routes.draw do

	get "create_event" => "events#create", :as =>"create_event" 
  get "events/new"
	get "events_index" => "events#index", :as =>"events_index"
  get "log_in" =>"sessions#new", :as =>"log_in"
	get "log_out" => "sessions#destroy", :as => "log_out"
  get "sign_up" =>"users#new", :as => "sign_up"
	get "show_event" => "events#show", :as => "show_event"
  get "userevents" => "events#userevents", :as => "userevents"
  get "destroy_part" => "participations#destroy", :as => "destroy_part"
  get "user_table" => "users#usertable", :as => "user_table"
  get "diff_userevents" => "events#diff_user", :as => "diff_userevents"
  get "all_seminars" => "events#all_seminars", :as => "all_seminars"
  get "all_lectures" => "events#all_lectures", :as => "all_lectures"
  get "all_conferences" => "events#all_conferences", :as => "all_conferences"
  get "user_seminars" => "events#user_seminars", :as => "user_seminars"
  get "user_lectures" => "events#user_lectures", :as => "user_lectures"
  get "user_conferences" => "events#user_conferences", :as => "user_conferences"
  get "diff_seminars" => "events#diff_seminars", :as => "diff_seminars"
  get "diff_lectures" => "events#diff_lectures", :as => "diff_lectures"
  get "diff_conferences" => "events#diff_conferences", :as => "diff_conferences"
  
  
  
  root :to => "sessions#new"
  resources :users do
  	resources :participations
  end	
  resources :sessions
  resources :events do
  	resources :participations
  end	
  																																									
  

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => "welcome#index"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
