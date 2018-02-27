require_relative 'spec_helper'

describe Deck do
  # Write tests for the Deck class.
  # What should you test?
  # 1.  Expected Behavior
  # 2.  Edge cases

  describe "You can create a Deck instance" do
    it "Can be created" do
      #create 52 cards and pass them in
      test_deck = Deck.new()
      test_deck.must_be_instance_of Deck
    end
  end

  describe "Creating a Deck" do
    it "Can create an array of 52 cards"  do
      test_deck = Deck.new()
      test_deck.create_deck
      # Test for an Array
      test_deck.cards.must_be_instance_of Array
      # Test for Array size
      test_deck.cards.length.must_equal 52
      # Test for card objects
      test_deck.cards.each do |card_frm_deck|
        card_frm_deck.must_be_instance_of Card
      end
    end

    describe "Draw from a deck" do
      it "Can remove a card from the deck" do
        test_deck = Deck.new()
        test_deck.create_deck
        a_drawn_card = test_deck.draw
        test_deck.cards.length.must_equal 51
        a_drawn_card.must_be_instance_of Card
      end

      it "Will alert user before removing from an empty deck" do
        test_deck = Deck.new()
        proc { test_deck.draw }.must_raise ArgumentError
      end

    end
    describe "Draw from a deck" do
      it "Can count the current number of cards within a deck." do
        test_deck = Deck.new()
        test_deck.create_deck
        test_deck.number_of_cards_in_deck.must_equal 52
      end

      it "Can count the number of cards after 52 draws." do
        test_deck = Deck.new()
        test_deck.create_deck
        num_of_cards_in_deck  = 52
        num_of_cards_in_deck.times do
          test_deck.draw
        end
        test_deck.number_of_cards_in_deck.must_equal 0
      end

    end

  end


end
