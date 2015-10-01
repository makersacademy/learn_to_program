def roman_numeral(num)
  conversion = { 1000 => 'M',
                 900 => 'CM',
                 500 => 'D',
                 400 => 'CD',
                 100 => 'C',
                 90 => 'XC',
                 50 => 'L',
                 40 => 'XL',
                 10 => 'X',
                 9 => 'IX',
                 5 => 'V',
                 4 => 'IV',
                 1 => 'I' }

  answer = ''

  conversion.each do |key, value|
    answer << value * (num / key)
    num = num % key
  end

  answer
end

puts roman_numeral 3294
puts roman_numeral 4
puts roman_numeral 100
puts roman_numeral 99
