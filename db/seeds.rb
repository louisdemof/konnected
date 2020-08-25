# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#delete previous seed
Feature.destroy_all
Level.destroy_all
Page.destroy_all

puts("Your previous seed has been deleted")
puts("Creation of a new seed")
# Seed for features
Feature.create(name: "Booking system", difficulty: 3, description: "Gives the possibility to book products/services for a certain period (e.g. booking a hotel room)")
Feature.create(name: "Automatic e-mails", difficulty: 1, description: "Gives the possibility to send automatic e-mails after a certain action (e.g. sending a confirmation e-mail upon user registration")
Feature.create(name: "Payment system", difficulty: 4, description: "Gives the possibility to pay online (via Stripe)")
Feature.create(name: "Upload information from users", difficulty: 2, description: "Gives the possibility for the users to upload documents (e.g. uploading a signed contract")
Feature.create(name: "Users", difficulty: 1, description: "Gives the possibility to create a profile, edit a profile, log in, log out, ... ")
Feature.create(name: "Admin log in", difficulty: 1, description: "Gives the possibility to log in as an administrator")
Feature.create(name: "Blog", difficulty: 3, description: "Gives the possibility to post articles (only own articles)")
Feature.create(name: "Forum", difficulty: 4, description: "Gives the possibility to post ask questions and get answers")
Feature.create(name: "Chat", difficulty: 4, description: "Gives the possibility to have online conversations on your website")
Feature.create(name: "Webshop", difficulty: 10, description: "Gives the possibility to have a complete online webshop, with up to 50 products, a payment system, a shopping cart, login, logout, admin portal, ...")

# Seed for levels
Level.create(name: "Level 1", definition: "HTML & CSS")
Level.create(name: "Level 2", definition: "HTML, CSS & Javascript")
Level.create(name: "Level 3", definition: "Front-end + one back-end feature")
Level.create(name: "Level 4", definition: "Front-end + multiple back-end features")
Level.create(name: "Level 5", definition: "Fullstack application of high difficulty")

# Seed for pages
Page.create(name: "home page", description: "a web page serving as a starting point of the website")
Page.create(name: "landing page", description: "a web page that your customer is taken to when clicking on a link/online advertisement")
Page.create(name: "about us page", description: "a web page stating details about your company/club/initiative")
Page.create(name: "contact page", description: "a web page stating all contact details")
Page.create(name: "product page", description: "a web page listing all products and respective details")
Page.create(name: "FAQ page", description: "a web page listing frequently asked questions")

#Seed for users
10.times do
  user = User.create!(
    email: Faker::Internet.email,
    password: 123456,
  )
end
