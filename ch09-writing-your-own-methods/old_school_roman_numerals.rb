def old_roman_numeral num
  # your code here
  roman = ""
until num == 0 do  
  
  if num >= 1000 
  	rem = num/1000
  	roman += "M" *rem
  	num = num % 1000
  elsif  num >= 100 && num < 1000
    rem = num/100
    if rem >= 5
    	roman += "D"
    	rem = rem - 5
    end	
    roman += "C" * rem
    num = num % 100    
  elsif num >= 10 && num < 100
  	rem = num / 10
  	if rem >= 5
    	roman += "L"
    	rem = rem - 5
    end	
  	roman +=  "X" * rem
  	num = num % 10  	
  elsif num < 10
  	rem =  num
  	if rem >= 5
    	roman += "V"
    	rem = rem - 5
    end	
  	roman += "I"* rem
  	num = 0
 end
end  	 
  
  return roman			
    		  	
end

