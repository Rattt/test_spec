Rails.application.routes.draw do
  root 'current#show'
  resources :forseds, path: 'admin', only: [:index, :new, :create, :destroy]
end
