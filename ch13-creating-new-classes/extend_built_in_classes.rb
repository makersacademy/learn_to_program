class Integer
  # your code here
  def factorial
    if self < 0
      return 'You can\'t take the factorial of a negative number!'
    end
    if self <= 1
      1
    else
      self * (self-1).factorial
    end
  end

  def to_roman

    thous = (self        / 1000)
    hunds = (self % 1000 /  100)
    tens  = (self %  100 /   10)
    ones  = (self %   10       )

    roman = 'M' * thous

    if hunds == 9
      roman = roman + 'CM'
    elsif hunds == 4
      roman = roman + 'CD'
    else
      roman = roman + 'D' * (self % 1000 / 500)
      roman = roman + 'C' * (self %  500 / 100)
    end

    if tens == 9
      roman = roman + 'XC'
    elsif tens == 4
      roman = roman + 'XL'
    else
      roman = roman + 'L' * (self %  100 /  50)
      roman = roman + 'X' * (self %   50 /  10)
    end

    if ones == 9
      roman = roman + 'IX'
    elsif ones == 4
      roman = roman + 'IV'
    else
      roman = roman + 'V' * (self %   10 /   5)
      roman = roman + 'I' * (self %    5 /   1)
    end

    roman

  end

end

class Array

  def shuffle
  shuffled = []

  while self.length > 0 do
    shuffled.push(self.delete_at(rand(self.length)))
  end

  shuffled
  end

end
