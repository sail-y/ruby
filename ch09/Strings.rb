s = "hello"
s.contact(" world") # << ,返回新的String对象
s.insert(5, " there") # same as s[5] = " there" ,return new s
s.slice(0,5) # Same as s[0,5]. return s substring
s.slice!(5,6) # Deletion. Same as s[5,6]="" returns deleted substring
s.eql?("hello world") # True Same as ==
s.length # => 5: counts characters in 1.9, bytes in 1.8
s.size # => 5: size is a synonym
s.bytesize # => false
s.empty? # => false
"".empty? # => true