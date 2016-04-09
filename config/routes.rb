Rails.application.routes.draw do
  root "open_mats#index"
  get "open_mats" => "open_mats#index"
  get "open_mats/:id" => "open_mats#show", as: "open_mat"
end
