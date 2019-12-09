class Item < ApplicationRecord
    validates :item_name, :item_info, :available_in, :item_price, presence: true
    validate  :picture_size
    belongs_to :mall
    mount_uploader :picture, PictureUploader
    
    def picture_size
      if picture.size > 5.megabytes
        errors.add(:picture, "should be less than 5MB")
      end
    end
    
end
