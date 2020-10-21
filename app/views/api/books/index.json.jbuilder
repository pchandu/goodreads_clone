
    @books.each do |book|
        json.set! book.id do
            json.extract! book, :id, :title, :author, :description, :isbn
            json.coverPhoto url_for(book.cover_photo)
        end
    end