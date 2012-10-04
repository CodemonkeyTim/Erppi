Erppi::Application.routes.draw do
  devise_for :users

  root to: "landing#index"
  
  #for admin
  match "/tyolista" => "jobs#index"
  match "/tyolista/:id" => "jobs#show"
  
  #for worker
  match "/tuntien_syotto" => "worker#hours"
  
  
end
