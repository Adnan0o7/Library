Rails.application.routes.draw do
  resources :profiles, :books, :roles
  # devise_for :users, controllers: { sessions: 'users/sessions' }
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
  # You can have the root of your site routed with "root"

  root to: 'home#index'

  devise_for :users, controllers: { registrations: "users/registrations" }
  
end
