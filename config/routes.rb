Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"

  # GET req to READ all values pertaining to a Model governed table of Objects/Records/Rows
  get "/restaurants", to: "restaurants#index"

  get "/restaurants/top", to: "restaurant#top"

  get "/restaurants/new", to: "restaurants#new"
  post "/restaurants/", to: "restaurants#create"

  # GET req to READ a single value pertaining to a Model governed table of Objects/Records/Rows
  get "/restaurants/:id", to: "restaurants#show", as: :restaurant
end
