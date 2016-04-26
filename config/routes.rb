Rails.application.routes.draw do
  root "open_mats#index"
  resources :open_mats do 
    resources :registrations
  end
end
