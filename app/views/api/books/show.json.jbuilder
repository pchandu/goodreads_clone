json.set! @book.id do 
    json.extract! @book, :id, :title, :author, :description, :isbn, :image_url
    json.cover_photo url_for(@book.cover_photo)
end