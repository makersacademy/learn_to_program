def roman_to_integer roman
	roman.upcase!
	
		digitos = {'I' => 1,
                'V' => 5,
                'X' => 10,
                'L' => 50,
                'C' => 100,
                'D' => 500,
                'M' => 1000}
         
         roman    = roman
         index    = roman.length - 1 #2
         sumornot = 0
         result   = 0	
         

         while index >= 0
         	trick    = roman[index].upcase #v I
         	index    = index - 1 #1
         	compare  = digitos[trick] #5 1
         	if !compare
      			puts 'This is not a valid roman numeral!'
      		return

    		end
    
         	if compare >= sumornot
         		
         		result = result + compare
         	else
         		result = result - compare
         	end
         	sumornot =  digitos[trick]
         end 
         result
    

     
     
  # your code here
end

puts(roman_to_integer('mcmxcix'))
puts(roman_to_integer('CCCLXV'))