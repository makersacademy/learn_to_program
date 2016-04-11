class Integer
  def to_fac
    if self < 0 
      return 'You can\'t take the factorial of a negative number.'
    elsif self <= 1
      1
    else
      self * (self-1).to_fac
    end
  end
end

puts 1.to_fac
puts 2.to_fac
puts 3.to_fac
puts 4.to_fac
puts 5.to_fac
puts 6.to_fac
puts 7.to_fac
puts 8.to_fac
puts 9.to_fac
puts 10.to_fac


