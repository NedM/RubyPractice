print "Who are you? "
name = gets.chomp.capitalize

print "Are we friends? (Y/N) "
friend = gets.chomp.downcase == "y"

not_friend_greeting = "Salutations, #{name}. I am pleased to make your acquaintance."
friend_greeting = "What's up, #{name}! Good to see you again."

unless friend
    puts not_friend_greeting
else
    puts friend_greeting
end

if !friend
    puts not_friend_greeting
else
    puts friend_greeting
end

# The two blocks above should produce the same output as they are equivalent

puts "The pleasure is all mine." unless friend