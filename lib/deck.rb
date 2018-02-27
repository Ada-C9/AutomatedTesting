
# deck.rb

require_relative 'card'
NUM_OF_CARDS_PER_SUIT = 13
class Deck
  attr_reader :cards
  def initialize
    @cards = []
  end

  def create_deck
    suits = [:hearts, :spades, :clubs, :diamonds]
    suits.each do |a_suit|
      count = 0
      NUM_OF_CARDS_PER_SUIT.times do
        count+=1
        self.cards << Card.new(count,a_suit)
      end
    end
  end
  

  def draw
    if cards.length == 0
      raise ArgumentError.new 'Cards have all been pulled, create new deck.'
    end
    return cards.pop
  end


  def shuffle
    return cards.shuffle!
  end

  def number_of_cards_in_deck
    return cards.length
  end


end
