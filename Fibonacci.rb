# Methods must be defined before they are exectuted!
def get_user_selection
  puts "Do you want a specific number of elements or elements up to a specific value?"
  
  choice = ""
  
  until choice == 'V' || choice == 'N' || choice == 'X'
  print "Enter 'V' for max value, 'N' for num elements, 'X' for exit > "
  choice = gets.chomp.chars.first.upcase
  end
  
  return choice
end

def get_num_fibonacci_numbers(num_entries)
  
  if num_entries <= 0
    return []
  end
  
  if num_entries < 2
    return [1]
  end
   
  seq = [1, 1]
  
  for i in 2...num_entries  #... is exclusive range (.. is inclusive)
    next_num = seq[i - 1] + seq[i - 2]
    #seq << next_num
    #seq += [next_num]
    seq.push next_num
  end
  
  return seq
end

def get_fibonacci_numbers_up_to_limit(limit)
  if limit <= 0
    return []
  end
  
  seq = [1, 1]
  previous = 1
  current = 1
  
  loop do 
    next_num = current + previous
    
    break if next_num > limit
    
    seq << next_num
    
    previous = current
    current = next_num
  end
  
  return seq
end

choice = get_user_selection

if choice == 'X'
  exit
end

fib_numbers = []

if choice == 'V'
  print "What value should the numbers in the sequence not exceed? > " 
  input = gets.chomp
  max_value = input.to_i
  
  fib_numbers = get_fibonacci_numbers_up_to_limit max_value
  puts "Fibonacci numbers with value #{max_value} or less:"
elsif choice == 'N'
  print "How many numbers in the sequence? > " 
  
  input = gets.chomp
  num_entries = input.to_i
 
  fib_numbers = get_num_fibonacci_numbers num_entries
  puts "First #{num_entries} Fibonacci numbers:"
end

puts fib_numbers.join(', ')
