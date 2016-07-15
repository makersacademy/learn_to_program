def roman_numeral num

  units    = (num % 10)
  tens     = (num % 100/10)
  hundreds = (num % 1000/100)

  ans = ""

  ans << "M" * (num/1000)

  if hundreds == 9
    ans << "CM"
  elsif hundreds == 4
    ans << "CD"
  else
    ans << "D" * (num % 1000/500)
    ans << "C" * (num % 500/100)
  end

  if tens == 9
    ans << "XC"
  elsif tens == 4
    ans << "XL"
  else
    ans << "L" * (num % 100/50)
    ans << "X" * (num % 50/10)
  end

  if units == 9
    ans << "IX"
  elsif units == 4
    ans << "IV"
  else
    ans << "V" * (num % 10/5)
    ans << "I" * (num % 5/1)
  end

    ans

end
