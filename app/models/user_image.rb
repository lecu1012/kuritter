class UserImage < ApplicationRecord
  mount_uploader :image, ImageUploader
end
