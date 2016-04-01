def roman_numeral num
  to_return = ""
  	thous = (num / 1000)
	hunds = (num % 1000 / 100)
  	tens  = (num % 100 / 10)
  	ones  = (num % 10)

  	if ones < 4
  		to_return << "I" * ones
  	elsif ones == 4
    	to_return << "IV" 
    elsif ones == 9 
    	to_return << "IX" 
    else
    	to_return << "V"
      to_return << "I" * (ones-5)
    	
    end
   
   one = ""
   one << to_return 
   to_return = ""

    if tens < 4
  		to_return << "X" * tens
  	elsif tens == 4
    	to_return << "XL" 
    elsif tens == 9 
    	to_return << "XC" 
    else
    	to_return << "L"
      to_return << "X" * (tens-5)
    	
    end

    ten = ""
   	ten << to_return 
   	to_return = ""
    
    	
    if hunds < 4
  		to_return << "C" * hunds
  	elsif hunds == 4
    	to_return << "CD" 
    elsif hunds == 9 
    	to_return << "CM" 
    else
    	to_return << "D"
      to_return << "C" * (hunds-5)
    	
    end

    hundred = ""
    hundred << to_return

   	mill = ""
  	mill << "M" * thous

 	"#{mill}#{hundred}#{ten}#{one}"



end

