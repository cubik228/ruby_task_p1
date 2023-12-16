# frozen_string_literal: true

require_relative 'module/instance_counter'
require_relative 'module/manufacturer_name_compani'
require_relative 'module/dinamik_module'
require_relative 'carriage'
require_relative 'module/validate_module'

# Top-level documentation comment for class Train
class Train
  include ManufacturerNameCompany
  extend Methods_for_class
  extended InstanceCounter
  include Validation
  attr_accessor_with_history :speed, :position, :train_stations

  def initialize(name, options = {})
    @type = options[:type] || 'not type'
    @number_of_cars = options[:number_of_cars] || 'not number_of_cars'
    @num_train = options[:num_train] || 'not num_train'
    @trains[@num_train] = type
    @carriages = []
    validate(name, @num_train)
  end

  def self.find(num)
    @trains.each do |i, number|
      puts number if i == num
    end
  end

  # Rest of the methods remain unchanged
end

# Top-level documentation comment for class PassengerTrain
class PassengerTrain < Train
  def disconnect_carriage(carriage)
    raise 'Invalid carriage type' unless carriage.instance_of?(CarriagePassenger)

    @number_of_cars -= 1
    super
  end

  def add_carriage(carriage)
    raise 'Invalid carriage type' unless carriage.instance_of?(CarriagePassenger)

    @number_of_cars += 1
    super
  end
end

# Top-level documentation comment for class CargoTrain
class CargoTrain < Train
  def disconnect_carriage(carriage)
    raise 'Invalid carriage type' unless carriage.instance_of?(CarriageCargo)

    @number_of_cars -= 1
    super
  end

  def add_carriage(carriage)
    raise 'Invalid carriage type' unless carriage.instance_of?(CarriageCargo)

    @number_of_cars += 1
    super
  end
end
