class Integer

  def factorial
    return "You can't take the factorial of a negative number" if self < 0

    if self <= 1
      1
    else self > 1
      self * (self-1).factorial
    end
  end

  def to_roman
    numerals = {
      1    => "I",
      5    => "V",
      10   => "X",
      50   => "L",
      100  => "C",
      500  => "D",
      1000 => "M"
    }

    num = self
    roman_num = ''
      numerals.reverse_each do |k, v|
        while num >= k
          num -= k
          roman_num += v
        end
      end
    roman_num
  end

end

class Array

  def shuffle
    return self if self.length <= 1
    arr = self
    x = arr.sample
    arr.delete(x)
    [x] + arr.shuffle
  end

end
