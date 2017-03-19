Rails.application.routes.draw do

  get 'page_forest/log_in'

  get 'page_forest/home'

  get 'page_forest/sign_in'

  root 'page_forest#home'

  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
