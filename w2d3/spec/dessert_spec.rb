require 'rspec'
require 'dessert'

describe Dessert do
  subject(:annies) { Dessert.new("jelly", 10, chef) }
  let(:chef) { double("chef", name: "Alex") }

  describe "#initialize" do
    it "sets a type" do
      expect(annies.type).to eq("jelly")
    end

    it "sets a quantity" do
      expect(annies.quantity).to eq(10)
    end

    it "starts ingredients as an empty array" do
      expect(annies.ingredients).to be_empty
    end

    it "raises an argument error when given a non-integer quantity" do
      expect { Dessert.new("jelly", "yum", chef) }.to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      annies.add_ingredient("sugar")
      expect(annies.ingredients).to eq(["sugar"])
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      ingredient_arr = ["sugar", "salt", "coloring"]
      ingredient_arr.each { |ing| annies.add_ingredient(ing) }

      expect(annies.ingredients).to eq(ingredient_arr)
      annies.mix!
      expect(annies.ingredients).not_to eq(ingredient_arr)
      expect(annies.ingredients.sort).to eq(ingredient_arr.sort)
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      annies.eat(5)
      expect(annies.quantity).to eq(5)
    end

    it "raises an error if the amount is greater than the quantity" do
      expect { annies.eat(20) }.to raise_error { "Not enough left!" }
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
      allow(chef).to receive(:titleize).and_return("Chef Alex the Great Baker")
      expect(annies.serve).to eq("Chef Alex the Great Baker has made 10 jellies!")
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do
      expect(chef).to receive(:bake).with(annies)
      annies.make_more
    end

  end
end
