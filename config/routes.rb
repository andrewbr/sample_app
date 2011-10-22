SampleApp::Application.routes.draw do
 

  resources :users
  
  root :to => "pages#home"
 
  match '/contact', :to => 'pages#contact'
  match '/about', :to => 'pages#about'
  match '/signup', :to => 'users#new'
  #get "pages/home"
  #get "pages/about"
  #get "pages/contact"

  

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => "welcome#index"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
