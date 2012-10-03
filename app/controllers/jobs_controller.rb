class JobsController < ApplicationController
  def index
    @jobs = Job.where("archived = ?", false)
  end
  
  def show
    @job = Job.find(params[:id])
    
  end
end
