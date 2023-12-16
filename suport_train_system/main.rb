# frozen_string_literal: true

require_relative 'marathon_route'
require_relative 'train'
require_relative 'railway_station'

go = 1
while go < 10
  puts 'Выберите действие:'
  puts '1) Создавать станции'
  puts '2) Создавать поезда'
  puts '3) Добавлять вагоны к поезду'
  puts '4) Отцеплять вагоны от поезда'
  puts '5) проехать одну станцию на поезде'
  puts '6) Просматривать список станций и список поездов на станции'

  nawigation = gets.to_i
  arr_station = []

  case nawigation
  when 1
    puts 'укажите количество станций'
    count_station = gets.to_i
    count_station.times do
      arr_station << gets.chomp
    end
    puts arr_station
  when 2
    puts '1) Создать грузовой поезд'
    puts '2) Создать пассажирский поезд'
    nawigation_train = gets.to_i
    new_train = CargoTrain.new('грузовой поезд', 1) if nawigation_train == 1
    new_train = PassengerTrain.new('пассажирский поезд', 1) if nawigation_train == 2
  when 3
    puts 'укажите количество добавляемых вагонов'
    count = gets.to_i
    new_train.add_carriage(count)
  when 4
    puts 'укажите количество отцепляемых вагонов'
    count = gets.to_i
    new_train.disconnect_cars(count)
  when 5
    new_train.go_to_next_station
  when 6
    routes = MarathonRoute.new(arr_station)
    puts routes.print_stations
  else
    puts 'такого варианта нет'
  end

  go += 1
end
