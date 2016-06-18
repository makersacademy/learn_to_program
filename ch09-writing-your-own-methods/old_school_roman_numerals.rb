def old_roman_numeral num
  if num > 0 && num < 3000
    roman = ''
    roman << 'M' * (num / 1000) 
    roman << 'D' * (num % 1000 / 500)  
    roman << 'C' * (num %  500 / 100)
    roman << 'L' * (num %  100 /  50)
    roman << 'X' * (num %   50 /  10)
    roman << 'V' * (num %   10 /   5)
    roman << 'I' * (num %    5 /   1)
    
    return roman
  else
    return 'Use a num between 0 and 3000'
  end
end

puts(old_roman_numeral(3000))
puts(old_roman_numeral(2000))
puts(old_roman_numeral(1999))
puts(old_roman_numeral(5))
