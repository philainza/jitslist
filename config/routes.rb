Rails.application.routes.draw do
  resources :users

  root "open_mats#index"
  resources :open_mats do 
    resources :registrations
  end
end
