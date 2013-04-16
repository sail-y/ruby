class Student < Person
  def talk
    puts "I am a student. my name is "+ @name + ", age is " + @age.to_s
  end #talk方法结束
end #Student类结束

p3=Student.new("yangfan",25);
p3.talk
p4=Student.new("Bem");
p4.talk