ActiveRecord::Enum::EnumType.class_eval do
  def assert_valid_value(value)
    unless value.blank? || mapping.has_key?(value) || mapping.has_value?(value)
      raise ArgumentError, "'#{value}' no es un valor valido para #{name}, los valores permitidos son: #{mapping.keys.join(",")}."
    end
  end
end
