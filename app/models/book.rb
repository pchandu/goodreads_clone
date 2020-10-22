class Book < ApplicationRecord

    has_one_attached :cover_photo
    has_many :reviews

    def average_rating
        reviews.average(:rating)
    end
end
