puts "ÑÝÊ¾redo"
c='a'
 for i in 1..4
    if(i==2 and c=='a')
      c='b'
      print "\n"
      redo
    end
    
    print i,c," "
  end
  puts "\n\n"