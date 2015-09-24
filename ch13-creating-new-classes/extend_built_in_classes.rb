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

    roman += 'M' * (self / 1000)


    if self % 1000 / 100 == 9
      roman += 'CM'
    else
      roman += 'D' * (self % 1000 / 500)
      if self % 500 / 100 == 4
        roman += 'CD'
      else
        roman += 'C' * (self % 500 / 100)
      end
    end


    if self % 100 / 90 == 1
      roman += 'XC' * (self % 100 / 90)
    else  
      roman += 'L' * (self % 100 / 50)
      if self % 50 / 10 == 4
        roman += 'XL'
      else  
        roman += 'X' * (self % 50 / 10)
      end
    end
    
    
    if self % 10 == 9
      roman += 'IX'  
    else
      roman += 'V' * (self % 10 / 5)    
      if self % 5 == 4
        roman += 'IV'
      else
        roman += 'I' * (self % 5)
      end   
    end

    return roman

  end


  

end