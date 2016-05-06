Rails.application.routes.draw do
  get "signin" => "sessions#new"
  resource :session
  get 'signup' => 'users#new'
  resources :users

  root "open_mats#index"
  resources :open_mats do 
    resources :registrations
  end
end
