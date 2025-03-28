Rails.application.routes.draw do
  resources :users
  get 'static_pages/home'
  get "/about",   to: "static_pages#about"
  get "/contact", to: "static_pages#contact"
  post "/contact", to: "static_pages#submit_contact"
  get "/signup",  to: "users#new"
  get "/login",   to: "sessions#new"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  root "static_pages#home"
end
