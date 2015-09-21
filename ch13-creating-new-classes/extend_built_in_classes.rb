class Array
  def shuffle
    unsorted = self; shuffled = []
    (self.length-1).times { shuffled << unsorted.delete_at(rand(0...self.length)) }   
  shuffled  
  end														
end

# puts [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 21, 21].shuffle

class Integer
  def factorial
    num = self; factorial = 1;
    num == 0 ? factorial : 
      if num < 0 then print "Error(negative): undefined"
      else
        while num > 0
          factorial *= num
          num -= 1
        end
        factorial
      end
  end
  
  def to_roman
    number = self
    m = number / 1000
    mleft = number % 1000
    
    dleft = mleft % 500
    c = dleft / 100
    cleft = dleft % 100
 
    lleft = cleft % 50
    x = lleft / 10
    xleft = lleft % 10
    
    thousands = 'M'*m				# thousands
       
    if mleft >= 900					# hundreds
	  hundreds = 'CM'
    elsif mleft >= 400
      if mleft < 500
        hundreds = 'CD'
      elsif mleft < 600
        hundreds = 'D'
      else
        hundreds = 'D'+'C'*c
      end
    else
      hundreds = 'C'*c
    end
    
    
	if cleft >= 90					# tens
	  tens = 'XC'
    elsif cleft >= 40
      if cleft < 50
        tens = 'XL'
      elsif cleft < 60
        tens = 'L'
      else
        tens = 'L'+'X'*x
      end
    else
      tens = 'X'*x
    end
    
    if xleft >= 9					# units
      units = 'IX'
    elsif xleft > 3
      if xleft == 4
        units = 'IV'
      elsif xleft % 5 == 0
        units = 'V'
      else
        units = 'V'+'I'*(xleft % 5)
      end
    else
      units = 'I'*xleft
    end
  
    return "#{thousands}#{hundreds}#{tens}#{units}"
  end
end
