# a,a1 = 1,2
# a,a1= a1,a
# print " a:#{a} a1:#{a1}"

# a ||= 3
# puts a

# class Foo
#   def bar(key)
#     h = { a: 1, b: 2 }
#     value = h[key]
#     value ||= 0
#   end
# end
# f = Foo.new
# puts f.bar(:f)
my = 0
class YAMLll
  def start
    puts 3
  end
end

y = YAMLll.new
YAMLll.const_set :my, 5

puts YAMLll.const_get(:my)
