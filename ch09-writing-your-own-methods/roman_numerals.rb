<<<<<<< HEAD
def roman_numeral new_roman
  letter_num = [["M", 1000], ["CM", 900], ["D", 500], ["CD", 400], ["C", 100],
  ["XC", 90], ["L", 50], ["XL", 40], ["X", 10], ["IX", 9], ["V", 5], ["IV", 4], ["I", 1]]

  out = ""
  letter_num.each do |arr|
      l = arr[0]
      n = arr[1]
    out << l*(new_roman / n)
    new_roman = new_roman %  n
  end
  return out
end

puts roman_numeral(2044)
=======
def roman_numeral (num)
  # your code here
  tho = (num / 1000)
  hun = (num % 1000 / 100)
  ten = (num % 100 / 10)
  one = (num % 10)
  
  roman = 'M' * tho
   if hun == 9
    roman = roman + 'CM'
   elsif hun == 4
    roman = roman + 'CD'
   else 
    roman = roman + 'D' * (num % 1000 / 500)
    roman = roman + 'C' * (num % 500 / 100)
   end
   if ten == 9 
    roman = roman + 'XC'
   elsif ten == 4
    roman = roman + 'XL'
   else 
    roman = roman + 'L' * (num % 100 / 50)
    roman = roman + 'X' * (num % 50 / 10)
   end
   
   if one == 9
    roman = roman + 'IX'
   elsif one == 4
    roman = roman +'IV'
   else
    roman = roman + 'V' * (num % 10 / 5)
    roman = roman + 'I' * (num % 5 / 1)
   end
   
   roman 
end

puts(roman_numeral(1233))
>>>>>>> 11673945d6bf849a1c90999e1382e105a8fe4577
