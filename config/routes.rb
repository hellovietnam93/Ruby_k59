Rails.application.routes.draw do
  root "static_page#home"
  get "/help", to: "static_page#help"
  get "/signup", to: "users#new"

  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
