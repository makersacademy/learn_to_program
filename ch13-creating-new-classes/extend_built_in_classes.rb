class Integer


  def factorial
   
    if self < 0
      return 'You can\'t take the factorial of a negative selfber!'
    elsif self <= 1
      1
    else
      self * (self-1).factorial
    end
  
  end

  def to_roman
    num = self
    letters = [[1000, 'M'],
             [500, 'D'],
             [100, 'C'],
             [50, 'L'],
             [10, 'X'],
             [5, 'V'],
             [1, 'I']]

    remaining = num
    roman_string = ''

    letters.each do |letter|
      units = remaining / letter[0]
      remaining -= units * letter[0]
      roman_string << letter[1] * units
    end

    roman_string

  end  

end