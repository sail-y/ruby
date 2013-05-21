

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

1.upto(5) { |i| after i { puts i } }
sleep(5)
every 1, 6 do |count|
	puts count
	break if count == 10
	count + 1
end

sleep(6)
