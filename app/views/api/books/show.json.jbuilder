json.books do
    json.set! @book.id do 
        json.extract! @book, :id, :title, :author, :description, :isbn
        json.coverPhoto url_for(@book.cover_photo)
        json.reviews @book.reviews
    end
end

json.reviews do 
    @book.reviews.each do |review|
        json.set! review.id do 
            json.extract! review, :id, :rating, :body, :author_id, :book_id
            json.author review.author.username #def refactor this later -- N+1 query red flag
        end 
    end
end