class Item < ApplicationRecord
    has_one_attached :image
    belongs_to :promo, optional: true
    belongs_to :type, optional: true
end
