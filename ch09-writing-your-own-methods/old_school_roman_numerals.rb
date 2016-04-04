

 def old_roman_numeral num
 to_roman = ""
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
     to_roman << romans[i][0] * result_of_devision 
    num = remainder 
   else 
     num = num 
   end
   num 
 end
   return to_roman 
 end

