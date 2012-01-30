class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :omniauthable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :id, :facebook_id, :email, :password, :password_confirmation, :remember_me, :name, :image
  
  mount_uploader :image, ImageUploader
  
  def self.find_for_facebook_oauth(access_token, signed_in_resource=nil)
    data = access_token['extra']['user_hash']
    if !signed_in_resource.nil?
      current_user = signed_in_resource
      current_user.update_attributes(:facebook_id => data["id"], :has_stub_password => true)
      return current_user
    elsif user = User.find_by_email(data["email"])
      user.update_attribute(:facebook_id, data["id"])
      return user
    elsif user = User.find_by_facebook_id(data["id"])
      return user
    else
      # Create a user with a stub password.
      User.create!(:facebook_id => data["id"], :name => data["name"], :email => data["email"], :password => Devise.friendly_token[0,20])
    end
  end
  
end
