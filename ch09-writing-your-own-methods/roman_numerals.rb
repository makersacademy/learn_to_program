def roman_numeral num

  ths = (num /1000)
  hs = (num % 1000/100)
  ts  = (num % 100/10)
  os  = (num % 10)

  rn = 'M' * ths

  if hs == 9
      rn += "CM"
  elsif hs == 4
      rn += "CD"
  else
      rn += "D" * (num % 1000/500)
      rn += "C" * (num % 500/100)
  end

  if ts == 9
      rn += "XC"
  elsif ts == 4
      rn += "XL"
  else
      rn += "L" * (num % 100/50)
      rn += "X" * (num % 50/10)
  end

  if os == 9
      rn += "IX"
  elsif os == 4
      rn += "IV"
  else
      rn += "V" * (num % 10/5)
      rn += "I" * (num % 5/1)
  end

  return rn

end

roman_numeral(num)

