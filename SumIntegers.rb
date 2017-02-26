puts "Welcome to Sum Integers!"

max_int = 0;

loop do
	print "Enter integer sum limit > "
	user_input = gets.chomp

	max_int = user_input.to_i

	break if max_int >= 1

	puts "Must enter an integer greater than 0!"
end

sum = 0

for x in 1..max_int
	sum += x
end

puts "Sum of integers from 1 to #{max_int} is #{sum}."
