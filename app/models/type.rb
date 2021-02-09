class Type < ApplicationRecord
    has_one_attached :image
    has_many :items
end
