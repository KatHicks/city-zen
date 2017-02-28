Rails.application.routes.draw do
  devise_for :users
  resources :issues
  resources :tags

  root "issues#index"
end
