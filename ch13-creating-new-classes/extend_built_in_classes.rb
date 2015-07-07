
class Integer
  def factorial 
    num = self 
    if num < 0
      return 'You can\'t take the factorial of a negative number!'
    end

    if num <= 1
      1
    else
      num * (num-1).factorial
    end

  end
end

