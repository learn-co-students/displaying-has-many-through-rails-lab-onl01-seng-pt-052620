Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :doctors
  resources :patients, only: [:index, :show]
 resources :appointments, only: [:show]
end
