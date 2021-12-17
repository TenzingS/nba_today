# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(
    username:"Ten", email:"ten@gmail.com", password: "Ten"
)

Post.create(
    title: "Bucks win NBA Championship!",
    body: "On July 20th, the Milwaukee Bucks win their first title in exactly 50 years! The last time they won was in the 1971 season.",
    user_id:1
    )

Post.create(
    title: "NBA Preseason starts this sunday!",
    body: "The first game will be between the Nets and the Lakers. They are the 2 main favorites to reach the finals this coming season.",
    user_id:1
    )

Comment.create(body:"Giannis was amazing!!", user_id: 1, post_id: 1)
Comment.create(body:"Yeah if they're healthy, the season is down to those 2 teams.", user_id: 1, post_id: 2)
Comment.create(body: "I agree!", user_id: 1, post_id: 2)

    
puts "Done seeding.."
