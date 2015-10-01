def old_roman_numeral num

  conversion = { 1000 => 'M', 500 => 'D', 100 => 'C', 50 => 'L', 10 => 'X', 5 => 'V', 1 => 'I'}
  answer = ''
  conversion.each { | key, value |
    answer << value * (num / key)
    num = num % key
  }

  return answer

end

puts old_roman_numeral 3201
puts old_roman_numeral 1
puts old_roman_numeral 24
puts old_roman_numeral 50
