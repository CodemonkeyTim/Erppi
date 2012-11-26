class WorkerController < ApplicationController
  before_filter :authenticate_user!
  
  layout "worker"
  
  def hours
    @real_today = DateTime.now    
    
    if params[:week].nil? || params[:year].nil?
      @today = @real_today
      @year = @today.year
    else
      @year = params[:year].to_i
      week = params[:week].to_i
      @today = Date.commercial(@year, week, 1)
    end
    
    mon = @today
    tue = mon.next_day
    wed = tue.next_day
    thu = wed.next_day
    fri = thu.next_day
    sat = fri.next_day
    sun = sat.next_day
    
    #Dates for this week
    @dates = [mon.strftime("%d.%m.%Y"), tue.strftime("%d.%m.%Y"), wed.strftime("%d.%m.%Y"), thu.strftime("%d.%m.%Y"), fri.strftime("%d.%m.%Y"), sat.strftime("%d.%m.%Y"), sun.strftime("%d.%m.%Y")]
    
    @hours = []
    t = Time.utc(2000, "jan", 1, 6, 0, 0, 0)
    
    (0..68).each do |i|
      new_time = t + (900 * i)
      @hours.push(new_time.strftime("%H:%M"))
    end
    
  end
  
  def payslips
  end
end
