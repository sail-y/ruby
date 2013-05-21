r = 'a'..'c'
r.each {|l| print "[#{l}]"}
r.step(2) {|l| print "[#{l}]"}

#puts r.include? 'b'
puts r.cover? 'b'

n = 1..3
puts n === 2 # => true

puts 1 <=> 2 # => -1


#冻结对象
s = "ice"
s.freeze
puts s.frozen?
#污染对象
s = "untrusted"
s.taint
s.tainted? # true it is tainted