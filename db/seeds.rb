# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Favourite.destroy_all
Review.destroy_all
Car.destroy_all
Owner.destroy_all

puts "Creating owners..."

owner1 = Owner.create!(nickname: "Dipesh")
owner2 = Owner.create!(nickname: "Luke")
owner3 = Owner.create!(nickname: "Elena")
owner4 = Owner.create!(nickname: "Tom")

puts "Creating cars..."

Car.create!(brand: "Mercedes", model: "A-Class Hatchback", year: 2024, fuel: "Unleaded petrol", owner: owner2)
Car.create!(brand: "Peugeot", model: "308", year: 2017, fuel: "unleaded petrol", owner: owner1)
Car.create!(brand: "Toyota", model: "Corolla", year: 2020, fuel: "Hybrid", owner: owner3)
Car.create!(brand: "BMW", model: "3 Series", year: 2019, fuel: "Diesel", owner: owner4)

puts "Done! #{Owner.count} owners and #{Car.count} cars created."
