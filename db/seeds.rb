# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#delete previous seed
Project.destroy_all
Feature.destroy_all
Level.destroy_all
Page.destroy_all

puts("Your previous seed has been deleted")
puts("Creation of a new seed")

# Seed for features
feature_1 = Feature.create(name: "Booking system", difficulty: 3, description: "Gives the possibility to book products/services for a certain period (e.g. booking a hotel room)")
feature_2 = Feature.create(name: "Automatic e-mails", difficulty: 1, description: "Gives the possibility to send automatic e-mails after a certain action (e.g. sending a confirmation e-mail upon user registration")
feature_3 = Feature.create(name: "Payment system", difficulty: 4, description: "Gives the possibility to pay online (via Stripe)")
feature_4 = Feature.create!(name: "Upload information from users", difficulty: 2, description: "Gives the possibility for the users to upload documents (e.g. uploading a signed contract")
feature_5 = Feature.create(name: "Users", difficulty: 1, description: "Gives the possibility to create a profile, edit a profile, log in, log out, ... ")
feature_6 = Feature.create(name: "Admin log in", difficulty: 1, description: "Gives the possibility to log in as an administrator")
feature_7 = Feature.create(name: "Blog", difficulty: 3, description: "Gives the possibility to post articles (only own articles)")
feature_8 = Feature.create(name: "Forum", difficulty: 4, description: "Gives the possibility to post ask questions and get answers")
feature_9 = Feature.create(name: "Chat", difficulty: 4, description: "Gives the possibility to have online conversations on your website")
feature_10 = Feature.create(name: "Webshop", difficulty: 10, description: "Gives the possibility to have a complete online webshop, with up to 50 products, a payment system, a shopping cart, login, logout, admin portal, ...")

# Seed for levels
level_1 = Level.create(name: "Level 1", definition: "HTML & CSS")
level_2 = Level.create(name: "Level 2", definition: "HTML, CSS & Javascript")
level_3 = Level.create(name: "Level 3", definition: "Front-end + one back-end feature")
level_4 = Level.create(name: "Level 4", definition: "Front-end + multiple back-end features")
level_5 = Level.create(name: "Level 5", definition: "Fullstack application of high difficulty")

# Seed for pages
page_1 = Page.create(name: "home page", description: "a web page serving as a starting point of the website")
page_2 = Page.create(name: "landing page", description: "a web page that your customer is taken to when clicking on a link/online advertisement")
page_3 = Page.create(name: "about us page", description: "a web page stating details about your company/club/initiative")
page_4 = Page.create(name: "contact page", description: "a web page stating all contact details")
page_5 = Page.create(name: "product page", description: "a web page listing all products and respective details")
page_6 = Page.create(name: "FAQ page", description: "a web page listing frequently asked questions")


# Seed for projects
Project.create!(name:"Project 1", user: User.all.sample, level: [level_1, level_2, level_3, level_4, level_5].sample, status: ["accepted", "rejected", "pending"].sample, deadline: Faker::Date.in_date_period, description:"challenging project", pages: [page_1, page_3, page_4], features: [feature_1, feature_3])
Project.create(name:"Project 2", user: User.all.sample, level: [level_1, level_2, level_3, level_4, level_5].sample, status: ["accepted", "rejected", "pending"].sample, deadline: Faker::Date.in_date_period, description:"complex project", pages: [page_1,page_3], features: [feature_6, feature_4])
Project.create(name:"Project 3", user: User.all.sample, level: [level_1, level_2, level_3, level_4, level_5].sample, status: ["accepted", "rejected", "pending"].sample, deadline: Faker::Date.in_date_period, description:"project for newcomers", pages: [page_3])
Project.create(name:"Project 4", user: User.all.sample, level: [level_1, level_2, level_3, level_4, level_5].sample, status: ["accepted", "rejected", "pending"].sample, deadline: Faker::Date.in_date_period, description:"interesting project", pages: [page_1, page_3, page_4])
Project.create!(name:"Project 5", user: User.all.sample, level: [level_1, level_2, level_3, level_4, level_5].sample, status: ["accepted", "rejected", "pending"].sample, deadline: Faker::Date.in_date_period, description:"suitable for advanced devs", pages: [page_1, page_3, page_4])

#Seed for users
10.times do
  user = User.create!(
    email: Faker::Internet.email,
    password: 123456,
  )
end

