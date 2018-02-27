
# card.rb

class Card
  SUITS = [:hearts, :spades, :clubs, :diamonds]
  attr_reader :value, :suit

  def initialize(value, suit)
    @value = value
    @suit = suit

    if value.class != Integer || value > 13 || value < 1
      raise ArgumentError.new('Value must be an integer between 1 and 13')
    end

    if !SUITS.include?(suit)
      raise ArgumentError.new('Valid suit entries are: hearts, spades, clubs, or diamonds.')
    end

  end


  def to_s
    value = self.value
    suit = self.suit
    face_value = {11 => "Jack", 12 => "Queen" , 13 => "King"}
    if value > 10
      value = face_value[value]
    end
    return "#{value} of #{suit.to_s}"
  end

end
