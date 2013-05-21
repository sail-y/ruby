data = [2, 5, 3, 4]
sum = data.inject {|sum, x| sum + x}  # => 14 (2+5+3+4)
floatprod = data.inject(1.0) {|p, x| p*x} # =>  120.0 (1.0*2*5*3*4)
max = data.inject { |m, x| m>x ? m : x} # =>  最大