$arr=[]
$arr[0]=2
  def add_prime(n)
    3.step(n,2){|num|$arr<<num if is_prime?num}
  end
  
  def is_prime?(number)
    j=0
    
    while $arr[j]*$arr[j]<=number
      return false if number%$arr[j]==0
      j+=1
    end
    return true;
  end
  
  add_prime(50)
  
  print $arr.join(","),"\n"