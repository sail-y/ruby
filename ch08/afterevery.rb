def after(seconds, &block)
	Thread.new do
		sleep(seconds)
		block.call
	end
end

def every(seconds, value=nil, &block)
	Thread.new do
		loop do
			sleep(seconds)
			value = block.call(value)
		end
	end
end