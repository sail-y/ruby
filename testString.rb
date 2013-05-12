#puts %Q!Just use a _different_ delimiter\!!

document = <<HERE    # This is how we begin a here document

This is a string literal.
Is has two lines and abruptly ends...
HERE

#puts document

greeting = <<HERE + <<THERE + "World"
Hello
HERE
There
THERE

#puts greeting

#10.times { puts "test".object_id}

greeting = "Hello"
greeting << "  " << "World"
puts greeting  #
