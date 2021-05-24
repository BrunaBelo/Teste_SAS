class Product < ApplicationRecord
    mount_uploader :image, ProductImageUploader
    validates :name, :description, :image, :price, presence: true

    scope :price_beetwen, -> (number_start, number_end) { where price: number_start.to_f..number_end.to_f }
end
