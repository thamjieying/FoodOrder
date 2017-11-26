require 'rails_helper'

RSpec.describe DeliveryOrder, :type => :model do
  subject { described_class.new(order_id: 'G1234', serving_datetime: DateTime.now) }

  describe "Initialization" do
    it "is an instance of Delivery Order" do
      expect(subject).to be_instance_of(DeliveryOrder)
    end
  end

  describe "Validations" do
    it "is valid with valid attributes" do
      expect(subject).to be_valid
    end
    it "is invalid without a order_id"  do
      subject.order_id = nil
      expect(subject).to_not be_valid
    end
    it "is invalid without a servingtime" do
      subject.serving_datetime = nil
      expect(subject).to_not be_valid
    end
  end


  describe "Associations" do
    it { should have_many(:order_items) }
  end
end
