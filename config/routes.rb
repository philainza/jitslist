Rails.application.routes.draw do
  resources :registrations

  root "open_mats#index"
  resources :open_mats
end
