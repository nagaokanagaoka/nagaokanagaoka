class TopsController < ApplicationController

  def new
    @job = Job.new
  end

  def top
     @job = Job.find_by(title: 'お客様を一番に考えられる仲間が待ってます★')
   end

end
