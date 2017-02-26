def Redact (plaintext, forbidden_words)
	if plaintext.length == 0
		return plaintext
	end

	if forbidden_words.length == 0
		return plaintext
	end

	plaintext_array = plaintext.split(" ")
	redact_char = '*'
	redacted_array = []

	plaintext_array.each do |word|
		if forbidden_words.include?(word.downcase)
			redacted_array << redact_char * word.length
		else
			redacted_array << word
		end
	end

	return redacted_array.join(' ')
end

original_text = ""

loop do
print "Enter text to redact > "
	original_text = gets.chomp
	break if original_text.length > 0

	puts "Please enter some text"
end

print "Enter word(s) to redact (separate with commas) > "
words_to_redact = gets.chomp.split(",")

# Lowercase each word in the forbidden words array
words_to_redact.collect! { |word| word.strip.downcase }

puts "\"#{original_text}\" with #{words_to_redact} removed is:"
puts "\"#{Redact original_text, words_to_redact}\""
