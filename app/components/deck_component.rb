class DeckComponent < ViewComponent::Base
  def call
    tag.div(class: "Deck") do
      tag.div(class: "Deck-stack")
    end
  end
end
