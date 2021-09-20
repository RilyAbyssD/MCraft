Rails.application.routes.draw do
  root "homes#index"
  resources :articles
  resources :users

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  get "/homes/userule", to: "homes#userule"
  get "/homes/privacy", to: "homes#privacy"
  # get "/profile/index", to: "profile#index"
  # post "articles/:id/update" => "articles#update"
  # get "/articles/new", to: "articles#new"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
