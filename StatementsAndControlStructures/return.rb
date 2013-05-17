def find (array, target)
	array.each_with_index do |element,index|
		return index if (element == target) #
	end
	nil
end