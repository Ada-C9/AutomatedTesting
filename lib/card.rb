# card.rb

class Card
  attr_reader :value, :suit
  attr_writer :value

  def initialize(value, suit)
    @value = value
    @suit = suit

    unless @suit == :diamonds || @suit == :hearts || @suit == :spades || @suit == :clubs
      raise ArgumentError.new("That's an invalid suit, my friend!")
    end
    unless (1..13) === @value
      raise ArgumentError.new("That's an invalid number, my friend!")
    end
  end

  def to_s
    if @value == 1
      @value = "Ace"
    elsif @value == 11
      @value = "Jack"
    elsif @value == 12
      @value = "Queen"
    elsif @value == 13
      @value = "King"
    end
    return "#{@value} of #{suit.to_s}"
  end

  def value
    return @value
  end

  def suit
    return @suit
  end
end

# cardy = Card.new(1, :clubs)
# puts cardy.to_s
