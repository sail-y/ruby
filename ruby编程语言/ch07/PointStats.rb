require 'singleton' # Singleton module is not built-in

class PointStats
	include Singleton #Make it a singleton

	def initialize
		@n, @totalX, @totalY = 0, 0.0, 0.0
	end

	def record(point)
		@n += 1
		@totalX += point.x
		@totalY += point.y
	end

	def report
		puts "Number of points created: #@n"
		puts "Average X coordinate: #{@totalX/@n}"
		puts "Average Y coordinate: #{@totalY/@n}"
	end
end