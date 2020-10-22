json.review.do 
    json.extract! @review, :id, :rating, :body, :book_id, :author_id
end

json.author.do 
    json.extract! @review.author, :id, :rating, :body, :body_id, :author_id
end

