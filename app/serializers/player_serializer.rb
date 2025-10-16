class PlayerSerializer < BaseSerializer
  def serialized_attributes
    @object.attributes.slice(*
      %w[
        name
      ]
    ).tap do |player|
      player.merge!(
        hand: []
      )
    end
  end
end
