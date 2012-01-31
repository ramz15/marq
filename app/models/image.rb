class Image < ActiveRecord::Base
  attr_accessible :image
  
  belongs_to :user
  
  mount_uploader :image, ImageUploader
  
end
