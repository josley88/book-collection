class User < ApplicationRecord

    has_many :books, through: :user_book:scale => 
    has_many :user_books

end
