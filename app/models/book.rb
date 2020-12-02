class Book < ApplicationRecord

    has_one_attached :cover_photo
    has_many :reviews

    def average_rating
        reviews.average(:rating)
    end

    def self.search(search){
        if search
            search_results = Book.find_by(title: search)
                if search_results
                    
                else
                    @books = Book.all
                end
        else 
            @books = Book.all
        end
    }
end
