class Area < ActiveRecord::Base
  include ActiveModel::Model

  attr_accessor :name, :area_id,
end
end
