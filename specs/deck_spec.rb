require 'pry'
require_relative 'spec_helper'

describe Deck do
  # Write tests for the Deck class.
  # What should you test?
    # 1.  Expected Behavior
    # 2.  Edge cases
  describe "You can create a Card instance" do
    it "Can be created" do
      newby = Deck.new
      newby.must_be_instance_of Deck
    end


    it "Is created with 52 card objects" do
      newby = Deck.new
      newby.my_cards.must_be_kind_of Array
      newby.my_cards.length.must_equal 52
    end
  end

  describe "shuffle_cards" do
    it "reorders the array of cards" do
      newby = Deck.new
      nexty = newby.shuffle_cards
      newby.my_cards[0].wont_equal nexty[0]
      newby.my_cards[51].wont_equal nexty[51]

    end
  end

  describe "draw" do
    it "removes a card from the deck & returns it" do
      newby = Deck.new
      newby.draw.must_be_instance_of Card
    end
  end

  describe "count" do
    it "returns the number of cards in the deck" do
      newby = Deck.new
      5.times do
        newby.draw
      end
      newby.count.must_equal 47
    end
  end
end
