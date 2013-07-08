Fandangr::Application.routes.draw do
resources :sessions, :only =>[:new, :create]
match "login", :to => 'sessions#new', :as => "login"
match "logout", :to => 'sessions#destroy', :as => "logout"

resources :users
resources :tickets
resources :theaters
resources :rooms
resources :screenings
   root :to => 'theaters#index'
put 'screenings/:id/tickets/:id', :to => 'tickets#buy'
  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
