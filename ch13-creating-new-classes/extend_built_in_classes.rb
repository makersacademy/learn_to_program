class Integer


  def factorial
   
    if self < 0
      return 'You can\'t take the factorial of a negative selfber!'
    elsif self <= 1
      1
    else
      self * (self-1).factorial
    end
  
  end


  def to_roman
    roman = ''
    num = self

    roman += 'M' * (num / 1000)


    if num % 1000 / 100 == 9
      roman += 'CM'
    else
      roman += 'D' * (num % 1000 / 500)
      if num % 500 / 100 == 4
        roman += 'CD'
      else
        roman += 'C' * (num % 500 / 100)
      end
    end


    if num % 100 / 90 == 1
      roman += 'XC' * (num % 100 / 90)
    else  
      roman += 'L' * (num % 100 / 50)
      if num % 50 / 10 == 4
        roman += 'XL'
      else  
        roman += 'X' * (num % 50 / 10)
      end
    end
    
    
    if num % 10 == 9
      roman += 'IX'  
    else
      roman += 'V' * (num % 10 / 5)    
      if num % 5 == 4
        roman += 'IV'
      else
        roman += 'I' * (num % 5)
      end   
    end

    roman

  end


  

end