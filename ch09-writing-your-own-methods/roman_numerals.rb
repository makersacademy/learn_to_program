def roman_numeral num

romannums = ""
arr = num.to_s.split(//).map{ |chr| chr.to_i }

romannums = "M" * arr[-4] if arr[-4] 

  if arr[-3] == 9
      romannums += "CM"
  elsif arr[-3] == 4
      romannums += "CD"
  else
      romannums += "D" * (num % 1000/500)
      romannums += "C" * (num % 500/100)
  end

  if arr[-2] == 9
      romannums += "XC"
  elsif arr[-2] == 4
      romannums += "XL"
  else
      romannums += "L" * (num % 100/ 50)
      romannums += "X" * (num % 50/10)
  end

  if arr[-1] == 9 
     romannums += "IX"
  elsif arr[-1] == 4 
     romannums += "IV"
  else
     romannums += "V" * (num % 10 / 5)
     romannums += "I" * (num % 5 / 1) 
  end
  romannums
end

puts roman_numeral(4)
puts roman_numeral(19)
puts roman_numeral(34)
puts roman_numeral(94)
puts roman_numeral(144)
puts roman_numeral(294)
puts roman_numeral(442)
puts roman_numeral(1444)
puts roman_numeral(2974)




# arr[-2]
# arr[-3]
#else
#romannums += "M" * (num / 1000) 
#romannums += "C" * (num % 500 / 100) 
#romannums += "L" * (num % 100 /50) 
#romannums += "X" * (num % 50 /10) 
#romannums += "V" * (num % 10 /5) 
#romannums += "I" * (num % 5 /1) 
#    

#newnumerals = { 4 => "IV", 9 => "IX", 40 => "XL", 90 => "XC", 400 => "CD", 900 => "CM" }
#numerals = { 1 => "I", 5 => "V", 10 => "X", 50 => "L", 100 => "C", 500 => "D", 1000 => "M" }


