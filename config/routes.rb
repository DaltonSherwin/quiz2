Rails.application.routes.draw do
  root 'skol#index'
  resources :skol
end
