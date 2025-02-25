Rails.application.routes.draw do
  get "files", to: "files#index", as: "files"
  get "files/download/:id", to: "files#download", as: "download_file"
  delete "files/:id", to: "files#destroy", as: "destroy_file"
  post "files", to: "files#upload"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "files#index"
end
