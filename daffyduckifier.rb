print "Say something! > "
what_he_said = gets.chomp

if(what_he_said.include? "s")
  what_he_said.gsub!(/s/, "th")
end

if(what_he_said.include?("S"))
  what_he_said.gsub!(/S/, "Th")
end

puts what_he_said
