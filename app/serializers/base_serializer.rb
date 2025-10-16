class BaseSerializer
  def initialize(object)
    @object = object
  end

  def as_json(*)
    {
      id: @object.id
    }.tap do |hash|
      hash.merge!(serialized_attributes)
    end
  end
end
