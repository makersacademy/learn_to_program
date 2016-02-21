class Integer
  def factorial
    if self <= 1
      1
    else
      self * (self-1).factorial
    end
  end

  def to_roman
    roman = ''

    roman = roman + 'M' * (self / 1000)
    roman = roman + 'D' * (self % 1000 / 500)
    roman = roman + 'C' * (self % 500 / 100)
    roman = roman + 'L' * (self % 100 / 50)
    roman = roman + 'X' * (self % 50 / 10)
    roman = roman + 'V' * (self % 10 / 5)
    roman = roman + 'I' * (self % 5 / 1)

    roman
  end
end

  # your code here


#integer division
#<< add to the string method
=begin
I = 1 V = 5 X = 10 L = 50
C = 100 D = 500 M = 1000
=end










