json.set! @review.id do
    json.extract! @review, :id, :rating, :body, :book_id, :author_id
    json.author @review.author.username
end

# entities {
#     1:{
    #     id: 
    #     rating:
    #     body:
    #     book_id:
    #     author_id:
    #     author:
    # }
#     }
# }