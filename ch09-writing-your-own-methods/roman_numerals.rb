def roman_numeral num
  # your code here

  thousands = (num / 1000)
  hundreds =  (num % 1000 / 100)
  tens =  (num % 100 / 10)
  ones = (num % 10 / 1)
to_return = 'M' * thousands

#hundreds
if hundreds == 9
  to_return << "CM"
elsif hundreds == 4
  to_return << "CD"
else
  to_return << "D" * (num % 1000 / 500)
  to_return << "C" * (num % 500 / 100)
end

#tens
if tens == 9
  to_return << "XC"
elsif tens == 4
  to_return << "XL"
else
  to_return << "L" * (num % 100 / 50)
  to_return << "X" * (num % 50 / 10)
end

#ones
if ones == 9
  to_return << "IX"
elsif ones == 4
  to_return << "IV"
else
  to_return << "V" * (num % 10 / 5)
  to_return << "I" * (num % 5 / 1)
end
to_return
end
 
