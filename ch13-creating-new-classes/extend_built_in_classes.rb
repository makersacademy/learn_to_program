class Integer
  def factorial
    if self < 1
      1
    else self * (self-1).factorial
  end
end

  def to_roman
    num = self
    roman = ''
    roman = roman + 'M' * (num/1000)
    roman = roman + 'D' * (num % 1000 / 500)
    roman = roman + 'C' * (num % 500 / 100)
    roman = roman + 'L' * (num % 100 / 50)
    roman = roman + 'X' * (num % 50 / 10)
    roman = roman + 'V' * (num % 10 / 5)
    roman = roman + 'I' * (num % 5 / 1)
  end
end

puts 40.to_roman
puts 4.factorial