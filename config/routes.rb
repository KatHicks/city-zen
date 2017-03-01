Rails.application.routes.draw do
  resources :issues
  resources :tags

  root "issues#index"
end
