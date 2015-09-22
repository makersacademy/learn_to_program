def roman_numeral num
  roman = ''

  roman += 'M' * (num / 1000)


  if num % 1000 / 100 == 9
    roman += 'CM'
  else
    roman += 'D' * (num % 1000 / 500)
    if num % 500 / 100 == 4
      roman += 'CD'
    else
      roman += 'C' * (num % 500 / 100)
    end
  end


  if num % 100 / 90 == 1
    roman += 'XC' * (num % 100 / 90)
  else  
    roman += 'L' * (num % 100 / 50)
    if num % 50 / 10 == 4
      roman += 'XL'
    else  
      roman += 'X' * (num % 50 / 10)
    end
  end
  
  
  if num % 10 == 9
    roman += 'IX'  
  else
    roman += 'V' * (num % 10 / 5)    
    if num % 5 == 4
      roman += 'IV'
    else
      roman += 'I' * (num % 5)
    end   
  end


  roman

end

puts 'Please enter a number to translate'
puts roman_numeral gets.chomp.to_i