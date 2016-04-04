class Integer
 def  factorial
 	if self <= 1 
 		1
 	else
    (1..self).reduce(:*) 
  end
end
 def to_roman
 	num = self
 roman_to = ""
 romans = [["M", 1000], 
         ["D", 500],  
           ["C", 100],  
           ["L", 50],   
           ["X", 10],   
           ["V", 5],    
           ["I", 1]]   


 romans.each_with_index do | x, i | 

   remainder = num % romans[i][1] 
   result_of_devision = num / romans[i][1]  

  if result_of_devision >= 1 
     roman_to << romans[i][0] * result_of_devision 
    num = remainder 
   else 
     num = num 
   end
   num 
 end
   return roman_to 
 end
 
end
