def roman_to_integer(roman, result = 0)
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
  return result if roman.empty?
  roman.upcase!
  conversion.each do |key, value|
    if roman.start_with?(value)
      result += key
      roman = roman.slice(value.length, roman.length)
      return roman_to_integer(roman, result)
    end
  end
end

puts roman_to_integer 'IX'
