class User < ActiveRecord::Base
	rolify
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :invitable, :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :name, :email, :password, :password_confirmation, :remember_me, :confirmed_at, :city, :state, :zip, :profile_pic, :remote_image_url, :admin
  # attr_accessible :title, :body
  mount_uploader :profile_pic, ImageUploader
  
  #Socialization
  acts_as_followable
  acts_as_follower
  acts_as_liker
  acts_as_mentionable
  acts_as_mentioner
end
