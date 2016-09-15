def roman_numeral num
  if num <= 0
    return '>0 only please!'
  end
  
  #this will be our roman numeral string:
  roman_numeral = ''
  
  # deal with 1000s
  thousands = num/1000
  if thousands > 0
      roman_numeral = 'M'*thousands
      num = num - thousands*1000
  end
  
  #deal wih 100s
  hundreds = num/100
  if hundreds == 9
      roman_numeral = roman_numeral + 'CM'
  elsif hundreds >= 5
      roman_numeral = roman_numeral + 'D' + 'C'*(hundreds-5)
  elsif hundreds == 4
      roman_numeral = roman_numeral + 'CD'
  elsif hundreds > 0
      roman_numeral = roman_numeral + 'C'*hundreds
  end
  num = num - hundreds*100
      
  #deal wih 10s
  tens = num/10
  if tens == 9
      roman_numeral = roman_numeral + 'XC'
  elsif tens >= 5
      roman_numeral = roman_numeral + 'L' + 'X'*(tens-5)
  elsif tens == 4
      roman_numeral = roman_numeral + 'XL'
  elsif tens > 0
      roman_numeral = roman_numeral + 'X'*tens
  end
  num = num - tens*10
      
  #deal wih 1s
  if num == 9
      roman_numeral = roman_numeral + 'IX'
  elsif num >= 5
      roman_numeral = roman_numeral + 'V' + 'I'*(num-5)
  elsif num == 4
      roman_numeral = roman_numeral + 'IV'
  elsif num > 0
      roman_numeral = roman_numeral + 'I'*num
  end
  
  return roman_numeral
end

puts 'Translation:'
puts '3541 is ' + roman_numeral(3541)
puts '0 is '+ roman_numeral(0)
puts '-123 is ' + roman_numeral(-123)
puts '2077 is ' + roman_numeral(2077)
puts '2005 is ' + roman_numeral(2005)