Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  root "homes#index"
  resources :articles

  get "/homes/userule", to: "homes#userule"
  get "/homes/privacy", to: "homes#privacy"
  # post "articles/:id/update" => "articles#update"
  # get "/articles/new", to: "articles#new"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
