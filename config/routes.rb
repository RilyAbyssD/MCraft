Rails.application.routes.draw do
  resources :articles
  root "articles#index"
  # post "articles/:id/update" => "articles#update"
  # get "/articles/new", to: "articles#new"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
