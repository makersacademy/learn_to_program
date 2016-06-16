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
