class TopsController < ApplicationController

  def index
    @job = Job.all
  end

  def show
  end
end
