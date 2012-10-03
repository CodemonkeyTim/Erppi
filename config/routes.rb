Erppi::Application.routes.draw do
  get "job_items/show"

  get "job_items/new"

  get "job_items/edit"

  devise_for :users

  root to: "jobs#index"
  
  match "/tyolista" => "jobs#index"
  match "/tyolista/:id" => "jobs#show"
end
