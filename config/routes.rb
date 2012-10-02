Erppi::Application.routes.draw do
  
  
  root to: "jobs#index"

  devise_for :user
end
