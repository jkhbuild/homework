require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef") }
  # subject(:brownie) { Dessert.new("brownie", 20, chef)}
  let(:brownie) { Dessert.new("brownie", 20, chef) }

  describe "#initialize" do
    it "sets a type" do
      expect(brownie.type).to eq('brownie')
    end

    it "sets a quantity" do
      expect(brownie.quantity).to eq(20)
    end

    it "starts ingredients as an empty array" do
      expect(brownie.ingredients).to eq([])
    end

    it "raises an argument error when given a non-integer quantity" do
      subject(:brownie) {Dessert.new("brownie", "abc", chef)}
        expect(brownie.type).to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      brownie.add_ingredient("nuts")
      expect(brownie.ingredients).to include("nuts")
    expect
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
    ingredients = {1=>"chocolate", 2=>"eggs", 3=>"baking powder", 4=>"sugar" }
      ingredients[rand(1..4)]
  end

  describe "#eat" do
    it "subtracts an amount from the quantity"

    it "raises an error if the amount is greater than the quantity"
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name"
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in"
  end
end
