
# deck.rb

require_relative 'card'
require 'awesome_print'
require 'pry'

class Deck
attr_reader :my_cards
  def initialize
    @suits = [:hearts, :diamonds, :spades, :clubs]
    @index = 0
    my_cards

  end
   #
   # my_deck = Deck.new
   # my_cards = my_deck.my_cards
   # # my_cards => [<Card#0390434>,<Card#0>]
   #


   def my_cards
     index = 0
     @my_cards = []
     @suits.each do |suit|
       (1..13).each do |value|
         card = Card.new(value, suit)
         @my_cards.push(card)
       end
     end
     return @my_cards
   end

   def shuffle_cards
     @my_cards.shuffle!
     return @my_cards

   end


  def draw
    new_card = @my_cards[0]
    @my_cards.delete_at(0)
    return new_card
  end

  def count
    return @my_cards.length
  end
end
# puts "hello!"
hooray = Deck.new
hooray.shuffle_cards
puts hooray.my_cards[0]
