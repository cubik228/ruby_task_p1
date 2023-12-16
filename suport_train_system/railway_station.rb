# frozen_string_literal: true

require_relative 'module/dinamik_module'
# Top-level documentation comment for class RailwayStation
class RailwayStation
  attr_accessor_with_history :name, :trains

  def initialize(name)
    @name = name
    @trains = []
  end

  def valid?
    @name.size >= 4
  end

  class Duplicate < StandardError; end

  def add_train(train)
    raise Duplicate if @trains.include?(train)

    @trains << train
  end

  def trains_by_type(type)
    @trains.select { |train| train.type == type }
  end

  def send_train(train)
    @trains.delete_at(@trains.index(train))
  end

  def act_on_the_train(&block)
    block.call(@trains)
  end
end
