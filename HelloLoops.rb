num_loops = 8
counter = 1

while counter <= num_loops
  puts "Hello #{counter} times!"  
  counter += 1
end

perhaps_exit = ""

until perhaps_exit == "exit"
  print "Please type \"Exit\" here > "
  perhaps_exit = gets.chomp.downcase
end

for num in 1..10  # .. = inclusive range ... = exclusive range
  print "#{num}, "
end
puts ""

count = 15
loop do 
  count -= 1
  break if count < 1  
  
  next if count % 2 == 0
  puts "I am the lo0py #{count}!"  
end


my_array = (1..10).to_a

print "Array: ["
my_array.each do |x|
  print "#{x * 10},"
end
puts "]"

3.times { puts "I'm telling you!" }