class Integer
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
    numeral = ""
      m = self/1000
      r = self%1000

      d = r/500
      r = r%500

      c = r/100
      r = r%100

      l = r/50
      r = r%50

      x = r/10
      r = r%10

      v = r/5
      r = r%5

      i = r/1

    numeral << "M"*m + "D"*d + "C"*c + "L"*l + "X"*x + "V"*v +"I"*i
    numeral
  end
end

puts 2469.to_roman
puts 3.factorial
