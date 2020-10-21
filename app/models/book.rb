class Book < ApplicationRecord

    has_one_attached :cover_photo
    has_many :reviews

end
