class AddIndexToUserImagesEmail < ActiveRecord::Migration[5.1]
  def change
    add_index :user_images, :email, unique: true
  end
end
