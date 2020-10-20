class Api::BooksController < ApplicationController
    def index 
        @books = Book.with_attached_cover_photo.all
        render :index 
    end

    def show 
        @book = Book.with_attached_cover_photo.find_by(id: params[:id])
            if @book
                render :show
            else 
                render json: ['sorry, this book has not quite made it to our database yet.'], status: 404
            end
    end
end
