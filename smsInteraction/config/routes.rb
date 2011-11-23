KoachedBot::Application.routes.draw do
  devise_for :users

  namespace :admin do
    resources :tropo_messages do
      as_routes
    end
  end

  root :to => 'prospecting#start'

  match 'debug.json' => 'tropo#debug'
  match 'outbound/:network/:username(/:debug)' => 'tropo#initiate_outbound_call', :defaults => {:debug => nil}

  ['kill', 'allow'].each {|r| match r => "tropo##{r}_sessions"}

  ['start', 'hangup', 'process_answer'].each {|r| match r => "prospecting##{r}", :via => :post,
                                                                                 :defaults => {:format => 'json'}}

  match 'record_timeout/:network/:from' => 'tropo#record_timeout', :via => 'post', :as => 'record_timeout'

  #match 'twilio/:call' => 'twilio#debug', :defaults => {:call => nil}
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
#== Route Map
# Generated on 16 Feb 2011 13:10
#
#     new_user_session GET  /users/sign_in(.:format)                        {:action=>"new", :controller=>"devise/sessions"}
#         user_session POST /users/sign_in(.:format)                        {:action=>"create", :controller=>"devise/sessions"}
# destroy_user_session GET  /users/sign_out(.:format)                       {:action=>"destroy", :controller=>"devise/sessions"}
#          user_unlock POST /users/unlock(.:format)                         {:action=>"create", :controller=>"devise/unlocks"}
#      new_user_unlock GET  /users/unlock/new(.:format)                     {:action=>"new", :controller=>"devise/unlocks"}
#                      GET  /users/unlock(.:format)                         {:action=>"show", :controller=>"devise/unlocks"}
#                 root      /(.:format)                                     {:action=>"start", :controller=>"prospecting"}
#                           /debug.json(.:format)                           {:action=>"debug", :controller=>"tropo"}
#                           /start.json(.:format)                           {:action=>"start", :controller=>"prospecting"}
#                           /outbound/:network/:username(/:debug)(.:format) {:action=>"initiate_outbound_call", :debug=>nil, :controller=>"tropo"}
#                 kill      /kill(.:format)                                 {:action=>"kill_sessions", :controller=>"tropo"}
#                allow      /allow(.:format)                                {:action=>"allow_sessions", :controller=>"tropo"}
#                index POST /index(.:format)                                {:action=>"index", :format=>"json", :controller=>"prospecting"}
#               hangup POST /hangup(.:format)                               {:action=>"hangup", :format=>"json", :controller=>"prospecting"}
#       record_timeout POST /record_timeout/:network/:from(.:format)        {:action=>"record_timeout", :controller=>"tropo"}
