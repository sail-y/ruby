def readfiles(filenames)
	threads = filenames.map do |f|
		Thread.new(File.read(f))
	end
	threads.map { |t| t.value }
end