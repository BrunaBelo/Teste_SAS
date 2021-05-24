class Product < ApplicationRecord
    mount_uploader :image, ProductImageUploader
    validates :name, :description, :image, :price, presence: true
end
