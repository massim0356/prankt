# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "destroying entire database..."
User.destroy_all
Prank.destroy_all
Booking.destroy_all

puts "Creating Users, and Pranks..."
User.create!([email: "test@test.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name])
10.times { User.create!([email: Faker::Internet.email, password: "te23th", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name]) }
Prank.create!([photo: "https://res.cloudinary.com/dzwpbkn3u/image/upload/v1622102263/image_lul1v6.png", name: "Cover something in sticky notes", content: "I will cover the requested item in sticky notes. Disclaimer: I won't do anything illegal (break into someones house etc.)", price: 5000, city:'Ichikawa', user: User.all.sample])
Prank.create!([photo: "https://res.cloudinary.com/dzwpbkn3u/image/upload/v1622099575/dribbble_xcsz2o.png", name: "Install water bucket prank", content: "I will professionally install a waterbucket in the place of your choosing. Most common places include: Bedroom door and Bathroom door.", price: 2000, city:'Yokohama', user: User.all.sample])
Prank.create!([photo: "https://res.cloudinary.com/dzwpbkn3u/image/upload/v1622102252/c667c3bd8ceb477f7116179a1238bcd9_zuge9a.png", name: "Turn backyard into petting zoo", content: "I will turn the targets backyard into a petting zoo. Note: Someone should distract them while I setup the petting zoo.", price: 20000, city:'Tokyo', user: User.all.sample])
Prank.create!([photo: "https://res.cloudinary.com/dzwpbkn3u/image/upload/v1622102266/New_Project_ezqptr.png", name: "Act like Jose in front of other people", content: "I will eat a ton of dust", price: 500, city:'Meguro', user: User.all.sample])
Prank.create!([photo: "https://res.cloudinary.com/dzwpbkn3u/image/upload/v1622102243/90d63239d45d03182c8ad9047cf2ea29_umjexa.png", name: "TP something", content: "I will cover the requested object with toilet paper", price: 5000, city:'Ichikawa', user: User.all.sample])
Prank.create!([photo: "https://res.cloudinary.com/dzwpbkn3u/image/upload/v1622102429/f86213f933c56262c483dabc6f98469c_sw4ncy_1_bsmfib.png", name: "Throw away cheesebread", content: "I will steal the target's cheese bread and throw it in the trash", city:'Meguro', price: 100, user: User.all.sample])
Prank.create!([photo: "https://res.cloudinary.com/dzwpbkn3u/image/upload/v1622101011/New_Project_2_nhm7ti.png", name: "Laugh for five minutes", content: "I will laugh for five minutes in front of an audience", price: 500, city:'Meguro', user: User.all.sample])
Prank.create!([photo: "https://res.cloudinary.com/dzwpbkn3u/image/upload/v1622103790/New_Project_1_zsbxpv.png" ,name: "Scare someone", content: "I will scare the target by jumping at them while I'm hiding somewhere", price: 2000, city:'Shinjuku', user: User.all.sample])
Prank.create!([photo: "https://res.cloudinary.com/dzwpbkn3u/image/upload/v1622102662/summer-balloon_q2odi9.png", name: "Throw water balloons", content: "I will throw water balloons at the requested target", price: 1500, city:'Shibuya', user: User.all.sample])
Prank.create!([photo: "https://res.cloudinary.com/dzwpbkn3u/image/upload/v1622103711/glittersparkles_jyhygv.png", name: "Send a glitter bomb", content: "I will send a glitter bomb to the requested address", price: 500, city:'Tokyo', user: User.all.sample])
puts "Created #{User.count} users and #{Prank.count} pranks..."
