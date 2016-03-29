
def old_roman_numeral num
	values = [["M", 1000], ["D", 500], ["C", 100], ["L", 50], ["X", 10], ["V", 5], ["I", 1]]
  
  roman = ""

  values.map do |letter, value|
   roman << letter*(num / value) 
   num = num % value #setting number to the remainder, for example if num = 18 remainder array is 
   					 #[18, 18, 18, 18, 8, 3, 0]
   
   end
  return roman
end

#puts old_roman_numeral 5452