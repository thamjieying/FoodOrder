# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Initialization

clone and run ```bundle install```

* setting up database

run the following commands
```
rails db:create
rails db:migrate
rails db:seed
```

* running Test files

Setup the database for testing
run the following commands
```
rails db:migrate RAILS_ENV=test
rails db:seed
```

Testing Models
```
rspec spec/models/order_item_spec.rb
rspec spec/models/delivery_order_spec.rb
rspec spec/models/meal_spec.rb
```

* getting JSON response

- go to path: ```/order``` to see all the delivery orders

- go to path: ```/orders/:order_id``` to see all the individual orders.
<small>Note that :order_id is a string which represents the delivery id</small>
