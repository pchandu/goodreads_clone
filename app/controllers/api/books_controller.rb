class Api::BooksController < ApplicationController
    def index 
        # debuggers
        # if params[:number][:number] > 0 
        #     @books = Book.with_attached_cover_photo.all.limit(params[:number][:number])
        # else
        # end
        
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
