class Person
  def initialize(name,age=18)
    @name = name
    @age = age
    @motherland = "China"
  end #��ʼ����������
  
  def talk
    puts "my name is " + @name + ",age is" + @age.to_s
    
    if @motherland == "China"
      puts "I am a Chinese."
    else
      puts "I am a foreigner."
    end
  end #talk ��������
  
  attr_writer :motherland
  
end #Person�����

p1=Person.new("yangfan",20)
p1.talk
p2=Person.new("Ben");
p2.motherland="ABC"
p2.talk

class Student < Person
  def talk
    puts "I am a student. my name is "+ @name + ", age is " + @age.to_s
  end #talk��������
end #Student�����

p3=Student.new("yangfan",25);
p3.talk
p4=Student.new("Ben");
p4.talk