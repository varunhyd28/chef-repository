variable = "Hello World"
puts "variable = #{variable}"

foo1 = String.new('Hello')

puts "foo class type #{foo1.class}"
puts "variable class type #{variable.class}"

if foo1 == variable
puts "Its same, #{foo1} and #{variable} are same"
else
puts "#{foo1} and #{variable} are different"
end