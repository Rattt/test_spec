Rails.application.routes.draw do
  root 'current#show'
  resources :forseds, path: 'admin'
end
