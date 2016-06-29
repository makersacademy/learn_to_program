class Integer

  def to_roman

    if self >3000 || self <1
      puts "Please enter a number in between 1 and 3000"
    end

  rom = []

  rom << "M" * (self / 1000)
  rom << "D" * (self % 1000 / 500)
  rom << "C" * (self % 500 / 100)
  rom << "L" * (self % 100 / 50)
  rom << "X" * (self % 50 / 10)
  rom << "V" * (self % 10 / 5)
  rom << "I" * (self % 5 / 1)

  rom.join.to_s

  end


  def factorial
    if self < 0
       return 'You can\'t take the factorial of a negative number!'
    end
    if self <= 1
      1
    else
      self * (self-1).factorial
     #self * factorial(self-1)          #changed from self*factorial(self-1) => factorial assigned in Integer class so its now .factorial
    end
  end
end
