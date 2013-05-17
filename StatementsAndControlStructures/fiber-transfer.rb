require 'fiber'
f = g = nil

f = Fiber.new { |x|
	puts "f1: #{x}"
	x = g.transfer(x+1)
	puts "f2: #{x}"
	x = g.transfer(x+1)
	puts "f3: #{x}"
	x+1
}

g = Fiber.new { |x|
	puts "g1: #{x}"
	x = g.transfer(x+1)
	puts "g2: #{x}"
	x = g.transfer(x+1)
}
puts f.transfer(1)