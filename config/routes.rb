Rails.application.routes.draw do
  get 'static_pages/home'

  get 'static_pages/help'

	root "users#index" # chuyen huong den users khi dang nhap vao trang chu
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'static_pages#home'
end
