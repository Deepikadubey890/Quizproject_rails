Rails.application.routes.draw do
  get 'dashboard/index'
  get 'home/index'
  
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  # root to: "home#index"
  root 'home#index'
  # Defines the root path route ("/")
  # root "posts#index"
  # Add a route for the DashboardController
  # get 'member/index'=> 'member#index', as: 'member'
  get 'member/:id' => 'members#show', as: 'member'
  get '/dashboard', to: 'dashboard#index', as: 'dashboard'
end
