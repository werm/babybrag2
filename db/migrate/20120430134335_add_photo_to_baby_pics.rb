class AddPhotoToBabyPics < ActiveRecord::Migration
  def change
    add_column :baby_pics, :photo, :string
  end
end
