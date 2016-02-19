class Integer
  def factorial
    num = self
    factorial = 1
    until num == 1
      factorial *= num
      num -= 1
    end
    factorial
  end

  def to_roman
    num = self
    roman = ""
    roman << "M" * (num / 1000)
    roman << "D" * (num % 1000 / 500)
    roman << "C" * (num % 500 / 100)
    roman << "L" * (num % 100 / 50)
    roman << "X" * (num % 50 / 10)
    roman << "V" * (num % 10 / 5)
    roman << "I" * (num % 5)
    roman
  end

end

# # implement shuffle in the Array class
# class Array
#   def shuffle
#     array = self
#     array.sample(array.length)
#   end
# end
