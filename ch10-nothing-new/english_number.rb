def english_number number

numString = ""

engNum = number

if engNum == 0 
numString = "zero"
end


  

  bigNums = [["quindecillion",48],["quattuordecillion", 45],["tredecillion", 42],["duodecillion", 39],["undecillion",36],["decillion", 33],["nonillion",30],["octillion",27],["septillion",24],["sextillion", 21],["quintillion", 18],["quadrillion", 15],["trillion",12],["billion",9],["million",6],["thousand", 3],["hundred",2]]
  tens = ["ten", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]
  teens = ["eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen","eighteen","nineteen"]
  ones = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]

  #bigNums = [["Million",6],["Thousand",3],["hundred",2]]
 #until number == 0
   
  #until engNum == 0 
   bigNums.each_with_index do |x,i|
     

    	factor = 10**x[1]

     until engNum < factor
    
    	div = engNum / factor
    	engNum = engNum % factor


   		if div > 0
   		number = english_number div
   		numString = numString + number + " " + x[0]
    	if engNum > 0
    	numString = numString + " "
        end
        end
     end   
        #engNum = div
   
	end    
       #if div < 1 
   		 tens_place = engNum  / 10
   		 ones_place = engNum  % 10

   			if tens_place > 1 && ones_place != 0
    		numString = numString + "#{tens[tens_place-1]}-#{ones[ones_place-1]}"
   			elsif tens_place == 1 and ones_place > 0 
    		numString = numString + "#{teens[ones_place-1]}"
    		elsif tens_place >= 1 and ones_place == 0
    		numString = numString + "#{tens[tens_place-1]}"
    		elsif tens_place == 0 && ones_place > 0
    		numString = numString + "#{ones[ones_place-1]}"
    		end
       #end
	 
        #engNum = mod
  
 #end
  numString


end	



puts english_number(556)
puts english_number(75)
puts english_number(10)
puts english_number(23)
puts english_number(55600)
puts english_number(3460)
puts english_number(5)
puts english_number(560879770709709702935709457092347597)


#end
