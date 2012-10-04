class LandingController < ApplicationController
  
  def index
    if user_signed_in?
      if current_user.role = "admin"
        redirect_to "/tyolista"
        return
      else
        redirect_to "/tuntien_syotto"
        return
      end
    end
    
  end
end
