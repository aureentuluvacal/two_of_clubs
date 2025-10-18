class CardComponent < ViewComponent::Base
  attr_reader :suit, :rank

  def initialize(suit:, rank:)
    @suit = suit
    @rank = rank
  end

  def suit_classes
    css = "Card-suit"
    css += " Card--#{suit}"
  end
end
