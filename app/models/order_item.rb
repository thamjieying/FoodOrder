class OrderItem < ApplicationRecord
  belongs_to :delivery_order
  belongs_to :meal
  validates_presence_of :quantity, :unit_price

  def total_price
    self.quantity * self.unit_price
  end

  def name
    self.meal.name
  end
end
