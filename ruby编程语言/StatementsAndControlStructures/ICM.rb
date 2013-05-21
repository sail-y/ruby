a = [1,2,3,4,5]
a.each { |x| puts "#{x}, #{a.shift}" } # => 1, 1\n3,2\n5,3
