class Integer
  # your code here
  def shuffle
    arr = self
    sort_by {rand}
  end
end

class Integer 
  def factorial
    return 1 if (0..1).include? self 
    self * (self-1).factorial
  end

  def to_roman
    numeral = ''

    numeral += 'M' * (self / 1000)
    numeral += 'D' * (self % 1000 / 500)
    numeral += 'C' * (self % 500 / 100)
    numeral += 'L' * (self % 100 / 50)
    numeral += 'X' * (self % 50 / 10)
    numeral += 'V' * (self % 10 / 5)
    numeral += 'I' * (self % 5 / 1)

    numeral
  end
end

# test shuffle
p [1,2,3,4,5,6,7,8,9].shuffle

# test factorial
puts 5.factorial

# test to_roman
puts 120.to_roman