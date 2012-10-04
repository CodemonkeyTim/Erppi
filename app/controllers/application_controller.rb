class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def after_sign_in_path_for (resource)                                                                                                                                              
    if current_user.role == "worker"
      return "/tuntien_syotto"
    end
      
    if current_user.role == "admin"
      return "/tyolista"                                                                                        
    end              
  end
end
