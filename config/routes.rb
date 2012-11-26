Erppi::Application.routes.draw do
  devise_for :users

  root to: "landing#index"
  
  #for admin
  match "/palkanlaskenta" => "payroll#index"
  match "/asetukset" => "settings#index"
  match "/asetukset/tyontekija/:id" => "settings#worker"
  
  #for worker
  match "/tuntien_syotto" => "worker#hours"
  
  
end
