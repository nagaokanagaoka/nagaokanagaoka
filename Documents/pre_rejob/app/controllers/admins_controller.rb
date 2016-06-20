class AdminsController < ApplicationController

  def top
  end

  def index
  @jobs = Job.all

  end

  def show
    #案件詳細
    @jobs = Job.find(params[:id])
  end


  def edit
  end

  def delite
  end


end
