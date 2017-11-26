require 'rails_helper'

RSpec.describe OrderItem, type: :model do
  subject { described_class.new(delivery_order_id: 1, meal_id: 1, quantity: 2, unit_price: 500)}

  describe "Initialization" do
    it "is an instance of OrderItem" do
      expect(subject).to be_instance_of(OrderItem)
    end
  end

  describe "Validations" do
    it "is valid with valid attributes" do
      expect(subject).to be_valid
    end

    it "is invalid without delivery_order" do
      subject.delivery_order_id = nil
      expect(subject).to_not be_valid
    end

    it "is invalid without order_id" do
      subject.meal_id = nil
      expect(subject).to_not be_valid
    end

    it "is invalid without a quantity" do
      subject.quantity = nil
      expect(subject).to_not be_valid
    end

    it "is invalid without a unit_price" do
      subject.unit_price = nil
      expect(subject).to_not be_valid
    end
  end

  describe "Associations" do
    it { should belong_to(:meal) }
    it { should belong_to(:delivery_order)}
  end
end
