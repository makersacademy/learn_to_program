class Integer
  # your code here
  def factorial
    return "needs to be positive" if self < 0
    self <= 1 ? 1 : self * (self-1).factorial
  end 
end

puts 5.factorial
puts 20.factorial
