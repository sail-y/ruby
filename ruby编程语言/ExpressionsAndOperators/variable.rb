def x
end
x = 0 if false

#puts x

x = 1

#puts x

@i = 1
def m=(num) #这种m=方法称为可变方法
  @i = num
end

def m #读取器方法
	@i
end
self.m = 3

puts m # => 3