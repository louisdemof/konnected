# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Seed for features
Feature.create(name: "Booking system", description: "Gives the possibility to book products/services for a certain period (e.g. booking a hotel room)")
Feature.create(name: "Automatic e-mails", description: "Gives the possibility to send automatic e-mails after a certain action (e.g. sending a confirmation e-mail upon user registration")
Feature.create(name: "Payment system", description: "Gives the possibility to pay online (via Stripe)")
Feature.create(name: "Upload information from users", description: "Gives the possibility for the users to upload documents (e.g. uploading a signed contract")
Feature.create(name: "Users", description: "Gives the possibility to create a profile, edit a profile, log in, log out, ... ")
Feature.create(name: "Admin log in", description: "Gives the possibility to log in as an administrator")
Feature.create(name: "Blog", description: "Gives the possibility to post articles (only own articles)")
Feature.create(name: "Forum", description: "Gives the possibility to post ask questions and get answers")
Feature.create(name: "Chat", description: "Gives the possibility to have online conversations on your website")


