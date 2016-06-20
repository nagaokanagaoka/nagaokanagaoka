class JobsController < ApplicationController

  class JobsController < ApplicationController
    def index
      @Area = Areas.new(params.require(:area_id))

    end

    def find
      @form = Area.new
    end



  def new
    @job = Job.new
  end

  # def index
  #   @jobs = Job.all
  # end

  def index
      @job = Job.find_by(title: '南フランスの美容室☆楽しくて安心です☆')
  end
end
