class SettingsController < ApplicationController
  before_filter :authenticate_user!
  
  layout "admin" 
  
  def index
    if params[:year].nil?
      @year = Time.now.year
    else
      @year = params[:year]
    end
  end
  
  def worker
    @worker = Worker.new(firstname: "Emppu", lastname: "Kantoluoto")
  end
end
