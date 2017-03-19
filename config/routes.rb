Rails.application.routes.draw do
  root "static_page#home"
  get "/about", to: "static_page#about"
  get "/blog", to: "static_page#blog"
  get "/contact", to: "static_page#contact"
  get "/signup", to: "users#new"
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"


  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
