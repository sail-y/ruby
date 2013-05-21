for matrix in data do
	catch :missing_data do
		for row in matrix do
			for value in row do
				throw :missing_data unless value
			end
		end
	end
end