module ClassMethods
  def attr_accessor_with_history(*attributes)
    attributes.each do |attribute|
      define_method(attribute) do
        instance_variable_get("@#{attribute}")
      end

      define_method("#{attribute}=") do |value|
        instance_variable_set("@#{attribute}", value)
        history = instance_variable_get("@#{attribute}_history") || []
        history << value
        instance_variable_set("@#{attribute}_history", history)
      end

      define_method("#{attribute}_history") do
        instance_variable_get("@#{attribute}_history") || []
      end
    end
  end

  def strong_attr_accessor(attribute, type)
    define_method(attribute) do
      instance_variable_get("@#{attribute}")
    end

    define_method("#{attribute}=") do |value|
      if value.is_a?(type)
        instance_variable_set("@#{attribute}", value)
      else
        raise TypeError, "Invalid type. Expected #{type}"
      end
    end
  end
end

class Example
  extend ClassMethods
  attr_accessor_with_history :a, :f
end

e = Example.new
e.a = 3
puts e.a
