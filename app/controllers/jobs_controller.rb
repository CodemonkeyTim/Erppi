class JobsController < ApplicationController
  def index
    @jobs = Job.where("archived = ?", false)
  end
end
