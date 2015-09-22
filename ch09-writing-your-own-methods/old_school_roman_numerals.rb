def old_roman_numeral num
  # your code here

  chars = { 1000 => "M", 500 => "D", 100 => "C", 50 => "L", 10 => "X", 5 => "V" }
  numAry = [1000, 500, 100, 50, 10, 5]
  roman = ""

  i=0
  while i < 6
     if num >= numAry[i]
       roman = roman + chars [ numAry[i] ] * (num / numAry[i])
       num = num % numAry[i]
     end
     i += 1
  end
  if num > 0
    roman = roman + "I" * num
  end
  roman
end
