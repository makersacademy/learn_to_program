def old_roman_numeral num

    m = num / 1000
    mleft = num % 1000
    
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
