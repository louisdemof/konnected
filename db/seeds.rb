# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#delete previous seed
Order.destroy_all
Project.destroy_all
Feature.destroy_all
User.destroy_all
Level.destroy_all
Page.destroy_all

puts("Your previous seed has been deleted")
puts("Creation of a new seed")

# Seed for features
feature_1 = Feature.create(name: "Booking system", difficulty: 3, description: "Gives the possibility to book products/services for a certain period (e.g. booking a hotel room)", amount_cents: 5500)
feature_2 = Feature.create(name: "Automatic e-mails", difficulty: 1, description: "Gives the possibility to send automatic e-mails after a certain action (e.g. sending a confirmation e-mail upon user registration", amount_cents: 5500)
feature_3 = Feature.create(name: "Payment system", difficulty: 4, description: "Gives the possibility to pay online (via Stripe)", amount_cents: 5500)
feature_4 = Feature.create!(name: "Upload information from users", difficulty: 2, description: "Gives the possibility for the users to upload documents (e.g. uploading a signed contract", amount_cents: 5500)
feature_5 = Feature.create(name: "Users", difficulty: 1, description: "Gives the possibility to create a profile, edit a profile, log in, log out, ... ", amount_cents: 5500)
feature_6 = Feature.create(name: "Admin log in", difficulty: 1, description: "Gives the possibility to log in as an administrator", amount_cents: 5500)
feature_7 = Feature.create(name: "Blog", difficulty: 3, description: "Gives the possibility to post articles (only own articles)", amount_cents: 5500)
feature_8 = Feature.create(name: "Forum", difficulty: 4, description: "Gives the possibility to post ask questions and get answers", amount_cents: 5500)
feature_9 = Feature.create(name: "Chat", difficulty: 4, description: "Gives the possibility to have online conversations on your website", amount_cents: 5500)
feature_10 = Feature.create(name: "Webshop", difficulty: 10, description: "Gives the possibility to have a complete online webshop, with up to 50 products, a payment system, a shopping cart, login, logout, admin portal, ...", amount_cents: 5500)

# Seed for levels
level_1 = Level.create!(name: "Level 1", definition: "HTML & CSS")
level_2 = Level.create(name: "Level 2", definition: "HTML, CSS & Javascript")
level_3 = Level.create(name: "Level 3", definition: "Front-end + one back-end feature")
level_4 = Level.create(name: "Level 4", definition: "Front-end + multiple back-end features")
level_5 = Level.create(name: "Level 5", definition: "Fullstack application of high difficulty")

# Seed for pages
page_1 = Page.create(name: "home page", description: "a web page serving as a starting point of the website", amount_cents: 5000)
page_2 = Page.create(name: "landing page", description: "a web page that your customer is taken to when clicking on a link/online advertisement", amount_cents: 5000)
page_3 = Page.create(name: "about us page", description: "a web page stating details about your company/club/initiative", amount_cents: 5000)
page_4 = Page.create(name: "contact page", description: "a web page stating all contact details", amount_cents: 5000)
page_5 = Page.create(name: "product page", description: "a web page listing all products and respective details", amount_cents: 5000)
page_6 = Page.create(name: "FAQ page", description: "a web page listing frequently asked questions", amount_cents: 5000)


#Seed for users
10.times do
  user = User.create!(
    email: Faker::Internet.email,
    password: 123456,
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    availability: Faker::Date.between(from: 2.days.ago, to: Date.today),
    address: "#{Faker::Address.street_address} #{Faker::Address.city}" ,
    phone_number: Faker::PhoneNumber.cell_phone,
    student: [true, false].sample,
    level: Level.all.sample
  )
end

User.create!(
    email: "louisdemof@hotmail.com",
    password: 123456,
    first_name: "Louis",
    last_name: "de Moffarts",
    availability: Faker::Date.between(from: 2.days.ago, to: Date.today),
    address: "Rue Félicien Delince 14, 1160, Auderghem" ,
    phone_number: "0498827393",
    student: true,
    level: Level.all.sample
  )
#Seed for adding company name to companies

User.where(student: false).each do |user|
  user.update company_name: ["Delincenut", "Biqom","Equip'r", "Giotto", "Edge", "Cowboy", "Compliments", "Javry", "Hoplr", "Cowboy" ,"Listminut", "Pom", "Animo", "Squats"].sample
end

# Seed for projecs
@clients = User.where(student: false)
Project.create!(name:"Project 1", user: @clients.sample, level: [level_1, level_2, level_3, level_4, level_5].sample, status: "published", deadline: Faker::Date.in_date_period, description:"challenging project", pages: [page_1, page_3, page_4], features: [feature_1, feature_3])
Project.create(name:"Project 2", user: @clients.sample, level: [level_1, level_2, level_3, level_4, level_5].sample, status: "published", deadline: Faker::Date.in_date_period, description:"complex project", pages: [page_1,page_3], features: [feature_6, feature_4])
Project.create(name:"Project 3", user: @clients.sample, level: [level_1, level_2, level_3, level_4, level_5].sample, status: "published", deadline: Faker::Date.in_date_period, description:"project for newcomers", pages: [page_3])
Project.create(name:"Project 4", user: @clients.sample, level: [level_1, level_2, level_3, level_4, level_5].sample, status: "published", deadline: Faker::Date.in_date_period, description:"interesting project", pages: [page_1, page_3, page_4])
Project.create!(name:"Project 5", user: @clients.sample, level: [level_1, level_2, level_3, level_4, level_5].sample, status: "published", deadline: Faker::Date.in_date_period, description:"suitable for advanced devs", pages: [page_1, page_3, page_4])


#Seed for project_pages
6.times do
  project_page = ProjectPage.create!(
    project: Project.all.sample,
    page: [page_1, page_2, page_3, page_4, page_5, page_6].sample,
  )
end


# Seed for Project Features
10.times do
  project_feature = ProjectFeature.create!(
    project: Project.all.sample,
    feature: Feature.all.sample
  )
end

# Seed for Solicitation
solicitation_1 = Solicitation.create!(status: ["Pending", "Accepted", "Denied"].sample, user: User.all.sample, project: Project.all.sample)
solicitation_2 = Solicitation.create(status: ["Pending", "Accepted", "Denied"].sample, user: User.all.sample, project: Project.all.sample)
solicitation_3 = Solicitation.create(status: ["Pending", "Accepted", "Denied"].sample, user: User.all.sample, project: Project.all.sample)
solicitation_4 = Solicitation.create(status: ["Pending", "Accepted", "Denied"].sample, user: User.all.sample, project: Project.all.sample)
solicitation_5 = Solicitation.create(status: ["Pending", "Accepted", "Denied"].sample, user: User.all.sample, project: Project.all.sample)
solicitation_6 = Solicitation.create!(status: ["Pending", "Accepted", "Denied"].sample, user: User.all.sample, project: Project.all.sample)

# Seed for review
Review.create!(score: 5, comment: "well done", solicitation: solicitation_1)
Review.create(score: 4, comment: "good job", solicitation: solicitation_2)
Review.create(score: 3, comment: "overall the result was satisfying", solicitation: solicitation_3)
Review.create(score: 2, comment: "room for improvement", solicitation: solicitation_4)
Review.create(score: 1, comment: "basics weren't covered", solicitation: solicitation_5)
Review.create!(score: 0, comment: "basics weren't covered", solicitation: solicitation_5)
