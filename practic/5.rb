# class Mag
#   attr_reader :age,:height,:damage,:name

#   def initialize(name, age, height, damage)
#     @age = age
#     @name = name
#     @height = height
#     @damage = damage
#   end

#   def self.create_mag(name)
#     age = (rand * 20 + 15).to_i
#     height = [age * 6, 115].min
#     damage = rand * 80 + 60
#     Mag.new(name, age, height, damage)
#   end
# # end

# module InstanceCounter2
#   def self.included(base)
#     base.extend(ClassMethods)
#     base.include(InstanceMethods)
#   end
#   module ClassMethods
#     attr_accessor :instances
#     def count_instances
#       self.instances ||= 0
#       self.instances += 1
#     end
#   end
#   module InstanceMethods
#     protected
#     def register_instance
#       self.class.count_instances
#     end
#   end
# end

# class Test
#   include InstanceCounter2
#   @@d = {"name1" => 1}

#   def initialize(num, name)
#     @@d[name] = num
#     register_instance
#   end

#   def self.d
#     @@d
#   end
# end

# my_object1 = Test.new("first",1)
# my_object2 = Test.new("first",1)
# puts Test.instances

# ensure
#   puts "number count = #{count}"
