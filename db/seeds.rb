Book.create!([
    {
        title: "Harry Potter and the Philosopher's Stone", 
        author: "JK Rowling", 
        price: "1.0", 
        publicationDate: "2022-09-17"
    }
])

User.create!([
  {username: "joseph"}
])

UserBook.create!([
  {user_id: 1, book_id: 1}
])
