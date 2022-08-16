Rails.application.routes.draw do
  resources :static_pages, :only => [:index]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get '/q', to: "static_pages#index"
  # Defines the root path route ("/")
  # root "articles#index"
  root "static_pages#index"
end
