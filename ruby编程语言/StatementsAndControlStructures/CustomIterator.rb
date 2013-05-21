def twice
	yield
	yield
end

def sequence(n, m, c)
	i = 0
	while(i < n)
		yield m*i + c
		i += 1
	end
end

sequence(3, 5, 1) { |y| puts y }


def circle(r, n)
	n.times do |i|
		angle = Math::PI * 2 * i /n
		yield r*Math.cos(angle), r*Math.sin(angle)
	end
end

circle(1,4) { |x,y| printf "(%.2f, %.2f) ", x , y}

def sequence1(n, m, c)
	i, s = 0, []
	while(i < n)
		y = m*i + c
		yield y if block_given?
		s << y
	end
	s
end