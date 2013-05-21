for i in 2..50
  f=true
  for p in 2...i
    if i%p==0
      f=!f
      break
    end
  end
  print i," " if f
end