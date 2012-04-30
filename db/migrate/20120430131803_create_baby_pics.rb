class CreateBabyPics < ActiveRecord::Migration
  def change
    create_table :baby_pics do |t|
      t.string :image
      t.string :title
      t.boolean :private

      t.timestamps
    end
  end
end
