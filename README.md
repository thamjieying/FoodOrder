# ASSIGNMENT
Follow the steps below to start the testing

## Initialization

clone and run ```bundle install```

## Setting up Database

run the following commands
```ruby
rails db:create
rails db:migrate
rails db:seed
```

## Running Test Files

Setup the database for testing
run the following commands
```ruby
rails db:migrate RAILS_ENV=test
rails db:seed
```

Testing Models
```ruby
rspec spec/models/order_item_spec.rb
rspec spec/models/delivery_order_spec.rb
rspec spec/models/meal_spec.rb
```

## Getting JSON Response

- go to path: ```/order``` to see all the delivery orders

- go to path: ```/orders/:order_id``` to see all the individual orders.
<br>
<small>Note that :order_id is a string which represents the delivery id</small>
