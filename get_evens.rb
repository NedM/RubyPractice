$stdout.sync = true # Print output immediately; don't buffer

# Given an Array return only the even values.

# Using #each
def find_even(array)
  if !array || !array.is_a?(Array)
    return nil
  end

  # Method 1 (Does not yield to block)
  # array.select { |i| i.is_a?(Integer) && i.even? }

  # Method 2 (Can yield to block)
  array.each_with_object(Array.new) do |i, evens|
    next unless i.is_a?(Integer) && i.even?

    yield i if block_given?
    evens.push(i)
  end
end

puts "Negative tests..."
puts find_even(nil).inspect
puts find_even([]).inspect
puts find_even('A test').inspect
puts find_even(:symbol).inspect
puts find_even(['some', :non_integers, 3.14159, { a: 1, b: 2 }, Array.new(3)]).inspect
puts "done with negative tests!\n\n"

input_array = Array(1..10)

# no block given
*even_values, last = find_even(input_array)
puts "The even values in #{input_array}\n  are #{even_values.join(', ')} and #{last}"

# With block given
puts find_even(input_array) { |even| puts "#{even} is even" }.inspect

# Method 3 (using reduce)
def find_even_with_reduce(*array) # *array is the rest or splat operator and gathers args into an array
  if !array || !array.is_a?(Array)
    return nil
  end

  array.reduce([]) do |evens, i|
    (i.is_a?(Integer) && i.even?) ?
      evens.push(i)
      : evens
  end
end

another_input_array = *(10..20)
puts find_even_with_reduce(*another_input_array).inspect # *Array splats/spreads the array

# Method 4: One liner using select. Preferred method assuming we know the array contains ints only.
puts (-6..6).to_a.select(&:even?).inspect

# Method 4a define a proc that can handle non-ints
is_even_proc = proc { |x| x.is_a?(Integer) && x.even? }

puts (-5..5).to_a.select(&is_even_proc).inspect

# Method 4b define a lambda which is stricter with argument arity and returns to the calling context
# is_even_lambda = ->(x) { x.is_a?(Integer) && x.even? }
is_even_lambda = lambda { |x| x.is_a?(Integer) && x.even? }

puts (101..115).to_a.select(&is_even_lambda).inspect
for i in (77..81) do
  puts "#{i} is #{is_even_lambda.call(i) ? '' : 'NOT '}even"
end