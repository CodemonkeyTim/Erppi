class JobItemsController < ApplicationController
  before_filter :authenticate_user!
  
  layout "admin"
  
  def show
  end

  def new
  end

  def edit
  end
end
