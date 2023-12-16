# frozen_string_literal: true

require_relative 'module/dinamik_module'
# MarathonRoute class represents a route for a marathon.
class MarathonRoute
  attr_accessor_with_history :stations

  def initialize(stations)
    @stations = stations
  end

  # Returns true if the number of stations is greater than or equal to 2.
  def valid_stations
    @stations.length >= 2
  end

  # Adds a station to the route if it is a RailwayStation object.
  def add_station(station)
    @stations << station if station.is_a? RailwayStation
  end

  # Removes a station from the route.
  def remove_station(station)
    @stations.delete(station)
  end

  # Prints the stations in the route.
  def print_stations
    @stations.each_with_index do |station, index|
      puts "Station #{index + 1}: #{station}"
    end
  end
end
