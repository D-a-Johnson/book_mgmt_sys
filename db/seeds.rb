# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Book.destroy_all
UserBook.destroy_all

User.create!(
  email: "johnson.a.derek.94@gmail.com",
  username: "Derek",
  balance: 10.50,
  password: "password123"
  )

User.create!(
  email: "test.test1@gmail.com",
  username: "Joe",
  balance: 12354.32,
  password: "password123"
  )

User.create!(
  email: "test.test2@gmail.com",
  username: "Fred",
  balance: 0.50,
  password: "password123"
  )

Book.create!(
  title: "Gone with the Wind",
  author: "Author Writer",
  total_books: 11,
  checked_books: 0,
  cost_day: 2
  )

Book.create!(
  title: "For Whom the Bell Tolls",
  author: "Author Writer",
  total_books: 3,
  checked_books: 0,
  cost_day: 1.50
  )

Book.create!(
  title: "Hamlet",
  author: "Shakespeare",
  total_books: 50,
  checked_books: 0,
  cost_day: 0
  )

Book.create!(
  title: "All Quiet on the Western Front",
  author: "Author Writer",
  total_books: 15,
  checked_books: 0,
  cost_day: 10
  )

UserBook.create!(
  user_id: 2,
  book_id: 1,
  checkout_date: Date.new(2020, 3, 5)
  )

UserBook.create!(
  user_id: 2,
  book_id: 2,
  checkout_date: Date.new(2020, 1, 15)
  )

UserBook.create!(
  user_id: 1,
  book_id: 3,
  checkout_date: Date.new(2020, 2, 20)
  )

UserBook.create!(
  user_id: 1,
  book_id: 1,
  checkout_date: Date.new(2020, 3, 4)
  )
