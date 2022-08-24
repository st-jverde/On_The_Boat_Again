Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "/profile", to: "pages#profile"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :boats do
    resources :bookings, only: %i[new create]
  end

  # Defines the root path route ("/")
  # root "articles#index"
end
