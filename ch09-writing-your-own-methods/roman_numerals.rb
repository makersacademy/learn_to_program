def roman_numeral num
 values = [["M", 1000], ["CM", 900], ["D", 500], ["CD", 400], 
          ["C", 100], ["XC", 90], ["L", 50], ["XL", 40], ["X", 10], ["IX", 9],
          ["V", 5], ["IV", 4], ["I", 1]]
          #since we need every different value in order to have num = num % values below working

  roman = ""

values.each do |letter, value|
  roman << letter *(num / value) #as long as num/value is an integer, the resul of letter *(num/value) will be o so
  num = num % value    		     # nothing will be added to roman

end
roman
end

puts roman_numeral 2459