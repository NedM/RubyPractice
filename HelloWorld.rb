print "Who are you? "
my_name = gets.chomp

# Assigning result to new variable
capitalized = my_name.capitalize

puts "Original input: #{my_name}" 
puts "#{capitalized} should be properly capitalized"

# Altering the value of my_name!
my_name.capitalize! #bang!
puts "#{my_name} should now be properly capitalized"

puts "Hello, #{my_name.capitalize}!"
