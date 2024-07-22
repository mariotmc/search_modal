Rails.application.routes.draw do
  root "articles#index"
  resources :articles
  resource :search, only: :show
end
