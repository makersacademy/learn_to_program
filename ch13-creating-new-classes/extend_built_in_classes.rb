class Integer
  def factorial
    if self < 0
      return 'You can\'t take the factorial of a negative counterber.'
    end
    if self <= 1
      1
    else
      self * (self-1).factorial
    end
  end

  def to_roman
    roman = ''
    counter = self
    roman = roman + 'M' * (counter / 1000)
    counter = counter - (counter / 1000) * 1000
    roman = roman + 'CM' * (counter / 900)
    counter = counter - (counter / 900) * 900
    roman = roman + 'D' * (counter / 500)
    counter = counter - (counter / 500) * 500
    roman = roman + 'CD' * (counter / 400)
    counter = counter - (counter / 400) * 400
    roman = roman + 'C' * (counter / 100)
    counter = counter - (counter / 100) * 100
    roman = roman + 'XC' * (counter / 90)
    counter = counter - (counter / 90) * 90
    roman = roman + 'L' * (counter / 50)
    counter = counter - (counter / 50) * 50
    roman = roman + 'XL' * (counter / 40)
    counter = counter - (counter / 40) * 40
    roman = roman + 'X' * (counter / 10)
    counter = counter - (counter / 10) * 10
    roman = roman + 'IX' * (counter / 9)
    counter = counter - (counter / 9) * 9
    roman = roman + 'V' * (counter / 5)
    counter = counter - (counter / 5) * 5
    roman = roman + 'IV' * (counter / 4)
    counter = counter - (counter / 4) * 4
    roman = roman + 'I' * (counter / 1)
    roman
  end

end

#puts 3.factorial
#puts 1999.to_roman
