class Job < ActiveRecord::Base
  require "FileUtils"

  class << self
    def search(query)
      rel = order("area")
      if query.present?
        rel = rel.where("area LIKE ?","%#{query}%")
      end
      rel
    end
  end

  def image_upload(image_file)
    # fileName = File.basename(url)
    # dirName = "#{Rails.root.instance_values["path"]}/public/img/"
    # filePath = dirName + fileName
    #
    # # create folder if not exist
    # FileUtils.mkdir_p(dirName) unless FileTest.exist?(dirName)

    file = image_file
    name = file.original_filename
    File.open("#{Rails.root.instance_values["path"]}/public/img/#{name}", 'wb') { |f|
      f.write(file.read)
    }
    self.image_path = "/img/#{name}"
    self.save
  end

  has_one :image, class_name: "JobImage", dependent: :destroy

  accepts_nested_attributes_for :image, allow_destroy: true

  ACCESSIBLE_ATTRS = [ :title, :detail, :area, :image_attributes ]

  has_many :jobs_users
  has_many :users, through: :jobs_user
end
