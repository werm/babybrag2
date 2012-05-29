class User < ActiveRecord::Base
  
has_many :authentications
  
  rolify
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :invitable, :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :name, :email, :password, :password_confirmation, :remember_me, :confirmed_at, :city, :state, :zip, :profile_pic, :remote_image_url, :admin, :about
  # attr_accessible :title, :body
  mount_uploader :profile_pic, ImageUploader
  
  #include ActsAsCaesar::ActAsCandidate
end