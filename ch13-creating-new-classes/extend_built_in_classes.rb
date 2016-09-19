class Integer
  def factorial
    if self < 0
      return 'You can\'t take the factorial of a negative number!'
    elsif self <= 1
      1
    else
      self * (self-1).factorial
    end
  end
end


#puts 1.factorial
#puts 0.factorial
#puts -1.factorial
#puts 3.factorial
#puts 4.factorial
#puts 5.factorial
#puts 6.factorial
#puts 7.factorial
