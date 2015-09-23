class Integer

  def factorial
    self <= 0 ? 1 : self * (self -1).factorial
  end
  
end

puts 5.factorial
