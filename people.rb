class Person
  attr_accessor :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end

  def greeting
    puts "Hi, my name is #{@first_name} #{@last_name}"
  end
end


class Student < Person
  def learn
    puts "I get it!"
  end
end


class Instructor < Person
  def teach
    puts "Everything in Ruby is an Object."
  end
end

chris = Instructor.new("Chris", "Sumail")

chris.greeting

cristina = Student.new("Cristina", "Hall")

cristina.greeting

chris.teach

cristina.learn

cristina.teach #Cristina is in Student Class and Person Class while the teach method is only defined in the Instructor class.
#Student and Instructor class share the same method defined in the Person. But Student class doesn't share the method defined in the Instructor class.
