Rails.application.routes.draw do
  resources :add_file_to_attachments
  resources :attachments
  resources :nodes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
