def roman_to_integer roman

return "Enter a valid roman numeral" if roman==""			#Check for valid input

digits={"I"=>1,"V"=>5,"X"=>10,"L"=>50,"C"=>100,"D"=>500,"M"=>1000}		#Initiate values array

arr=roman.split("").map{|i| digits[i.upcase]}							#Translate Letters to numbers
arr.each_cons(2).map{|a,b| a < b ? a*=-1 : a}.push(arr[-1]).inject(:+)	#If previous number is smaller than next, make negative then sum over array.

end

