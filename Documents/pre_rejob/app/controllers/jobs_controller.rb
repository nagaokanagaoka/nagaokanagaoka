class JobsController < ApplicationController
  def new
    @Job = Job.new
  end

  def lists
  @Job = Job.find_by(title:'お客様を一番に考えられる仲間が待ってます★')
end

  def job
  end

#案件詳細
  def show
    @job = Job.find(params[:id])
  end
end
