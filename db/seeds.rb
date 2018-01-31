# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

users = User.create([
                      { email: 'stephane@renuo.ch', password: '12345678' },
                      { email: 'dev@renuo.ch', password: '12345678' },
                      { email: 'dev+1@renuo.ch', password: '12345678' },
                      { email: 'dev+2@renuo.ch', password: '12345678' },
                      { email: 'dev+3@renuo.ch', password: '12345678' },
                      { email: 'dev+4@renuo.ch', password: '12345678' },
                      { email: 'dev+5@renuo.ch', password: '12345678' },
                      { email: 'dev+6@renuo.ch', password: '12345678' },
                      { email: 'dev+7@renuo.ch', password: '12345678' },
                      { email: 'dev+8@renuo.ch', password: '12345678' },
                      { email: 'dev+9@renuo.ch', password: '12345678' },
                      { email: 'dev+10@renuo.ch', password: '12345678' },
                      { email: 'dev+11@renuo.ch', password: '12345678' },
                      { email: 'dev+12@renuo.ch', password: '12345678' },
                      { email: 'dev+13@renuo.ch', password: '12345678' },
                      { email: 'dev+14@renuo.ch', password: '12345678' },
                      { email: 'dev+15@renuo.ch', password: '12345678' },
                      { email: 'dev+16@renuo.ch', password: '12345678' },
                      { email: 'dev+17@renuo.ch', password: '12345678' },
                      { email: 'dev+18@renuo.ch', password: '12345678' },
                      { email: 'dev+19@renuo.ch', password: '12345678' },
                      { email: 'dev+20@renuo.ch', password: '12345678' },
                      { email: 'dev+21@renuo.ch', password: '12345678' },
                      { email: 'dev+22@renuo.ch', password: '12345678' },
                      { email: 'dev+23@renuo.ch', password: '12345678' },
                      { email: 'dev+24@renuo.ch', password: '12345678' },
                      { email: 'dev+25@renuo.ch', password: '12345678' },
                      { email: 'dev+26@renuo.ch', password: '12345678' },
                      { email: 'dev+27@renuo.ch', password: '12345678' },
                      { email: 'dev+28@renuo.ch', password: '12345678' },
                      { email: 'dev+29@renuo.ch', password: '12345678' },
                      { email: 'dev+30@renuo.ch', password: '12345678' }
                    ])

books = Book.create([
              {
                title: 'Animal Farm',
                author: 'George Orwell',
                isbn: '0452284244',
                user: users.sample
              },
              {
                title: 'The Art of War',
                author: 'Sun Tzu',
                isbn: '1590302257',
                user: users.sample
              },
              {
                title: 'The Lord of the Rings',
                author: 'J.R.R. Tolkien',
                isbn: '0618640150',
                user: users.sample
              },
              {
                title: 'Au bonheur des ogres',
                author: 'Daniel Pennac',
                isbn: '2070403696',
                user: users.sample
              },
              {
                title: 'Il nome della rosa',
                author: 'Umberto Eco',
                isbn: '8845246345',
                user: users.sample
              },
              {
                title: 'The Hitchhiker\'s Guide to the Galaxy',
                author: 'Douglas Adams',
                isbn: '0345418913',
                user: users.sample
              },
              {
                title: 'The Hobbit',
                author: 'J.R.R. Tolkien',
                isbn: '0618260307',
                user: users.sample
              },
              {
                title: 'The Skystone',
                author: 'Jack Whyte',
                isbn: '0765350696',
                user: users.sample
              },
              {
                title: 'The Crystal Shard',
                author: 'R.A. Salvatore',
                isbn: '0786942460',
                user: users.sample
              },
              {
                title: 'Dracula',
                author: 'Bram Stoker',
                isbn: '0393970124',
                user: users.sample
              },
              {
                title: 'Harry Potter and the Sorcerer\'s Stone',
                author: 'J.K. Rowling',
                isbn: '0439554934',
                user: users.sample
              }
            ])


books.each do |book|
  Faker::Number.between(1, 20).times do
    Review.create({user: users.sample, book: book, rating: Faker::Number.between(0, 5), comment: Faker::HitchhikersGuideToTheGalaxy.quote})
  end
end
