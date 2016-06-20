class ListsController < ApplicationController
  def new
    @job = Job.new
 end

  def area
          @areas = Area.find_by(:name => params[:name])
        end
  end


  def job_type
          @job_types = JobType.find_by(:name => params[:name])
        end
