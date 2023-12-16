# a = proc { |x| puts x }
# def m(str, &blok)
#   str.capitalize!
#   blok.call(str)
# end
# m("asda", &a)

class Flyer
  attr_reader :name, :email, :miles_flown

  def initialize(name, email, miles_flown)
    @name = name
    @email = email
    @miles_flown = miles_flown
  end

  def to_s
    "#{name} (#{email}): #{miles_flown}"
  end
end

f = Flyer.new('gera', 'mkomp06@gmail.com', 'a123')
(1..10).each do |count|
  puts "#{count} #{f}"
end
