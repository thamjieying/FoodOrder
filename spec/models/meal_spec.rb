require 'rails_helper'

RSpec.describe Meal, type: :model do
  subject { described_class.new(name: "Fried Chicken", description: "very nice") }

  describe "Initialization" do
    it "should be an instance of meal"
  end

  describe "Validations" do
    it "should have valid attributes" do
      expect(subject).to be_valid
    end

    it "is invalid without a name" do
      subject.name = nil
      expect(subject).to_not be_valid
    end

    it "is invalid without a description" do
      subject.description = nil
      expect(subject).to_not be_valid
    end

  end

  describe "Associations" do
    it { should have_many(:order_items)}
  end
end
