puts "Please enter the first word you think of"
words = %w(apple banana cherry)
response = words.collect do |word|
	print word + "> "
	response = gets.chop
	if response.size == 0
		word.upcase!
		redo
	end
	response
end