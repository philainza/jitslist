Rails.application.routes.draw do
  root "open_mats#index"
  resources :open_mats
end
