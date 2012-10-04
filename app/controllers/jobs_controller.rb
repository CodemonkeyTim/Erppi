class JobsController < ApplicationController
  before_filter :authenticate_user!
  
  layout "admin" 
  
  def index
    @jobs = Job.where("archived = ?", false)
  end
  
  def show
    @job = Job.find(params[:id])
    
  end
end
