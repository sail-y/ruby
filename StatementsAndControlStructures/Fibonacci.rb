def fibonacci_generator(x0,y0)
	Fiber.new do
		x,y = x0,y0
		loop do
			Fiber.yield y
			x,y = y,x+y
		end
	end
end

g = fibonacci_generator(0,1)
10.times { print g.resume, " "}
puts



class FibonacciGenerator
	def initialize
		@x,@y = 0,1
		@fiber = Fiber.new do
			loop do
				@x, @y = @y, @x+@y
				Fiber.yield @x
			end
		end
	end

	def next
		@fiber.resume
	end

	def rewind
		@x,@y = 0,1
	end

	def each
		loop {yield self.next}
	end
end

g = FibonacciGenerator.new
10.times { print g.next, " " }
g.rewind;puts
10.times { print g.next, " " }

