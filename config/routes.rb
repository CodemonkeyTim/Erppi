Erppi::Application.routes.draw do
  devise_for :users

  root to: "jobs#index"
end
