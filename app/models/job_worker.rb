class JobWorker < ActiveRecord::Base
  attr_accessible :job_id, :worker_id
end
