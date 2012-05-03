class BabyPic < ActiveRecord::Base
  attr_accessible :image, :private, :title, :photo
  mount_uploader :photo, ImageUploader
  acts_as_voteable
  #acts_as_likeable
end
