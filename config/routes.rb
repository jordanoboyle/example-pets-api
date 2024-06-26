Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  # Pets Controller Router
  post "/pets",        controller: "pets", action: "create"
  get "/pets/:id",     controller: "pets", action: "show"
  patch "/pets/:id",   controller: "pets", action: "update"
  delete  "/pets/:id", controller: "pets", action: "destroy"

  # Users Controller Routes
  post "/users",       controller: "users", action: "create"

  # Sessions Controller Route
  post "/sessions",    controller: "sessions", action: "create"
end
