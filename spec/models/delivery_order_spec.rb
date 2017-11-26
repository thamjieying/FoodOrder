require 'rails_helper'

RSpec.describe DeliveryOrder, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  it "has a valid factory"
  it "is invalid without a order_id"
  it "is invalid without a servingtime"
  it "has one or many OrderItems"
  it "returns a json with delievery_date and delivery_time"
end
