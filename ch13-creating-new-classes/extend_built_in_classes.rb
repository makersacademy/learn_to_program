class Integer
  def to_factorial
    if self < 0
      return 'You can\'t take the factorial of a negative number!'
    end
    if self <= 1
      1
    else
      self * (self-1).to_factorial
    end
  end
end

puts 3.to_factorial
puts 30.to_factorial
