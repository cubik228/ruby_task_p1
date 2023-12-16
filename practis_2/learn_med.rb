# module Test 
# end
# #модуль который динамически дописывает гетеры и сетеры 
# module Ficha
#   def my_attr_accessor(*name)
#     name.each do |name|
#       var_name = "@#{name}".to_sym
#       define_method(name) { instance_variable_get(var_name) }
#       define_method("#{name}=") { |value| instance_variable_set(var_name, value) }
#     end
#   end
# end

# class ForFicha
#   extend Ficha
#   my_attr_accessor :m_attr,:a,:b,:c
# end

# f = ForFicha.new
# f.m_attr = 4
# puts f.m_attr
# f.a = 1111
# puts f.a
# puts f.instance_variables






# class Y
#   @@numer = 19
#   include Test
# end
# #динамическое расширение класса 
# Y.class_eval do
#   def funcc(a)
#     a *= 2
#     puts a
#   end  
# end
# #динамическое расширение модуля 
# Test.module_eval do
#   def print_numbre_999
#     puts 999
#   end
# end




# print "введите строку: "
# str = gets.chomp
# print "напиши метод: "
# method = gets.chomp.to_sym
# puts "#{str.send(method)}"



class K 
  def m
    puts "method m"
  end
  def method_missing(name,*arguments)
    puts "namt method = #{name} | with this arguments #{arguments}"
  end
end
k = K.new
k.adasd(1,2,3,4)
