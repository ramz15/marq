class Image < ActiveRecord::Base
  attr_accessible :image
  
  belongs_to :user
  
  validate :image, :presence => true
  
  mount_uploader :image, ImageUploader
    
end
