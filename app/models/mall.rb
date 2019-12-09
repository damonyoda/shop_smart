class Mall < ApplicationRecord
    validate  :picture_size
    mount_uploader :picture, PictureUploader
    has_many :items
    
    private
    #private will make the picture_size only within this code
    def picture_size
      if :picture.size > 5.megabytes
        errors.add(:picture, "should be less than 5MB")
      end
    end
end
