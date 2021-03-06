Rails.application.routes.draw do
  resources :subscribers
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root to: 'pages#home'
  get "posts/:id", to: "posts#show", as: "post"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
