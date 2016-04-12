Rails.application.routes.draw do
  root "open_mats#index"
  get "open_mats" => "open_mats#index"
  get "open_mats/:id" => "open_mats#show", as: "open_mat"
  get "open_mats/:id/edit" => "open_mats#edit", as: "edit_open_mat"
end
