f = Fiber.new {
  puts "Fiber says Hello"
  Fiber.yield
  puts "Fiber says Goodbye"
}

puts "Caller says Hello"
f.resume
puts "Caller says Goodbye"
f.resume

f = Fiber.new do |message|
  puts "Caller said: #{message}"
  message2 = Fiber.yield("Hello")
  puts "Caller said: #{message2}"
  "Fine"
end

response = f.resume("Hello1")
puts "Fiber said: #{response}"
response2 = f.resume("How are you?")
puts "Fiber said: #{response2}"