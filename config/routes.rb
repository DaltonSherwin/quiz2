Rails.application.routes.draw do
  root 'players#index'
  resources :playeres
end
