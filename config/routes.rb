Rails.application.routes.draw do
  resources :attachments
  resources :nodes
  root 'nodes#index'
end
