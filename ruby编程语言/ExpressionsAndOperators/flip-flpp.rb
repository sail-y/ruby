(1..10).each { |x| print x if x==3..x==5} # => 345

(1..10).each { |x| print x if x==3..x>=3} # => 3
(1..10).each { |x| print x if x==3...x>=3} # => 34