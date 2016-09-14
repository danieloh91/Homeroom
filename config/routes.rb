Rails.application.routes.draw do
  root to: "users#splash"

  get "/users/instructors", to: "users#index", as: "instructors"
  get "/users/new", to: "users#new", as: "new_user"
  post "/users", to: "users#create"
  get "/users/:id", to: "users#show", as: "user"
  get "/users/:id/edit", to: "users#edit", as: "edit_user"
  patch "/users/:id", to: "users#update"
  delete "/users/:id", to: "users#destroy", as: "destroy_user"
  post "/users/:id", to: "users#add_instructor", as: "add_instructor"
  post "/users/:id", to: "users#remove_student", as: "remove_student"
  get "/users/:id/follow", to: "users#follow", as: "follow_user"
  post "/users/:id/follow", to: "users#confirm_instructor", as: "confirm_instructor"
  delete "/users/:id/follow", to: "users#deny_instructor", as: "deny_instructor"

  get "/login", to: "sessions#new", as: "new_session"
  get "/logout", to: "sessions#destroy"
  post "/sessions", to: "sessions#create", as: "create_session"

  resources :tweets,          only: [:create, :destroy]
end
