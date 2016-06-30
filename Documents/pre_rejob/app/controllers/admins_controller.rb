class AdminsController < ApplicationController

  def top
  end

  def index
    @jobs = Job.all
  end
  def show
    #案件詳細
    @job = Job.find(params[:id])
    @user = User.find_by(session[:id])
    @entry = JobsUser.where(job_id: params[:id])
  end

  #検索
  def search
    if params[:area].present?
      @jobs = Job.where(area: params[:area])
    else
      @jobs = Job.search(params[:q])
    end
    render "index"

  end

end
