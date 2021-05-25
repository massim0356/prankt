# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "destroying all database..."
User.destroy_all
Prank.destroy_all
Booking.destroy_all

puts "Creating Users, Pranks and Bookings..."

10.times { User.create!([email: Faker::Internet.email, password: "te23th", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name]) }
20.times { Prank.create!([name: Faker::JapaneseMedia::Doraemon.gadget, content: Faker::TvShows::FamilyGuy.quote, price: 2000, user_id: rand(1..10)]) }
10.times { Booking.create!([date: Date.today, status: "incomplete", time: Time.now, description: Faker::TvShows::FamilyGuy.quote, user_id: rand(1..10), prank_id: rand(1..20)])}

puts "Created #{User.count} users, #{Prank.count} pranks, #{Booking.count} bookings..."


