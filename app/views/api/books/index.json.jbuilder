json.books do 
    @books.each do |book|
        json.set! book.id do
            json.extract! book, :id, :title, :author, :description, :isbn
        end
    end
end 