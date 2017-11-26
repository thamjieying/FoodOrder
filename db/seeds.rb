# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Meal.destroy_all
DeliveryOrder.destroy_all

#seed Meals
10.times do
  Meal.create(
    name: Faker::Food.dish,
    description: Faker::Lorem.paragraph
  )
end

#Seed Delivery Orders
5.times do
  DeliveryOrder.create(
    order_id: "G" + Faker::Number.number(4).to_s,
    serving_datetime: DateTime.now
  )
end

#Seed Order Items
#Order1
OrderItem.create(delivery_order_id: 1, meal_id: 1, quantity: 2, unit_price: 1050)
OrderItem.create(delivery_order_id: 1, meal_id: 2, quantity: 1, unit_price: 550)
OrderItem.create(delivery_order_id: 1, meal_id: 3, quantity: 1, unit_price: 450)
OrderItem.create(delivery_order_id: 1, meal_id: 4, quantity: 2, unit_price: 950)
OrderItem.create(delivery_order_id: 1, meal_id: 5, quantity: 2, unit_price: 850)
#Order2
OrderItem.create(delivery_order_id: 2, meal_id: 6, quantity: 1, unit_price: 1050)
OrderItem.create(delivery_order_id: 2, meal_id: 7, quantity: 2, unit_price: 550)
#Order3
OrderItem.create(delivery_order_id: 3, meal_id: 8, quantity: 3, unit_price: 999)
#Order4
OrderItem.create(delivery_order_id: 2, meal_id: 9, quantity: 10, unit_price: 880)
#Order5
OrderItem.create(delivery_order_id: 2, meal_id: 10, quantity: 3, unit_price: 990)
