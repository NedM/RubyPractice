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

puts get_num_fibonacci_numbers(25).join(", ")
