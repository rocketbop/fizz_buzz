require 'spec_helper'
require './fizz_buzz'

RSpec.describe "fizz_buzz" do
  context "knows that a number is multiple of" do
    it "3" do
      expect(is_multiple_of_three?(3)).to be_truthy
    end
    it "5" do
      expect(is_multiple_of_five?(5)).to be_truthy
    end
    it "15" do
      expect(is_multiple_of_fifteen?(15)).to be_truthy
    end
  end
  context "knows that a number is not multiple of" do
    it "3" do
      expect(is_multiple_of_three?(4)).not_to be_truthy
    end
    it "5" do
      expect(is_multiple_of_five?(1151)).not_to be_truthy
    end
    it "15" do
      expect(is_multiple_of_fifteen?(16)).not_to be_truthy
    end
  end
  context "when playing the game it returns" do
    it "2" do
      expect(fizzbuzz(2)).to eq(2)
    end
    it "3" do
      expect(fizzbuzz(3)).to eq("fizz")
    end
    it "5" do
      expect(fizzbuzz(5)).to eq("buzz")
    end
    it "15" do
      expect(fizzbuzz(15)).to eq("fizzbuzz")
    end
  end
end
