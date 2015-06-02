class Integer
  def factorial
    if self <=1
      1
    else
      self * (self-1).factorial
    end
  end
end

puts 5.factorial