class Array
  def shuffle
    array = self
    new = []
    while array.length > 0
      rand = rand(0..array.length-1)
      new << array[rand]
      array.delete(new.last)
    end
    new
  end
end

class Integer
  def factorial
    raise 'Please use a positive number!' if self < 0
    if self == 0 || self == 1
      1
    else
      self * (self-1).factorial
    end
  end

  def to_roman
    result = ""
    result << 'M' * (self      / 1000)
    result << 'D' * (self%1000 /  500)
    result << 'C' * (self%500  /  100)
    result << 'L' * (self%100  /   50)
    result << 'X' * (self%50   /   10)
    result << 'V' * (self%10   /    5)
    result << 'I' * (self%5    /    1)
    ans = result

    numerals = ['M', 'D', 'C', 'L', 'X', 'V', 'I']
    for n in (0 .. numerals.length - 2)
      ans.sub! numerals[n] + numerals[n+1] * 4, numerals[n+1] + numerals[n-1]
      ans.sub! numerals[n+1] * 4, numerals[n+1] + numerals[n]
    end
    ans
  end
end

puts [1,2,3,4,5,6,7,8,9,10].shuffle
puts 10.factorial
puts 1999.to_roman
