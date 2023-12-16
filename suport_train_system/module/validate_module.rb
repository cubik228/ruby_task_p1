module Validation
  def validate(name, type, *args)
    @validations ||= []
    @validations << { name: name, type: type, args: args }
  end

  def validate!(object)
    @validations.each do |validation|
      name = validation[:name]
      type = validation[:type]
      args = validation[:args]

      case type
      when :presence
        raise "#{name} can't be nil or empty" if object.send(name).nil? || object.send(name).empty?
      when :format
        raise "#{name} has invalid format" unless object.send(name) =~ args[0]
      when :type
        raise "#{name} has invalid type" unless object.send(name).is_a?(args[0])
      end
    end
  end

  def valid?(object)
    begin
      validate!(object)
    rescue
      return false
    end
    true
  end
end
