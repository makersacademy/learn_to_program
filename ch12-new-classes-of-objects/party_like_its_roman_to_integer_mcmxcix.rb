def roman_to_integer roman

  # your code here
  # Find each letter that repeats.
  # Special cases:
  # CM, CD, XC, XL, IX, IV
  # Multiply each letter that repeats for its value
  # sum up all letters

  roman_values = { 'M' => 1000, 'D' => 500, 'C' => 100, 'L' => 50, 'X' => 10, 'V' => 5, 'I' => 1}

  number = 0
  index = 0
  roman_array = roman.upcase.split('')
  puts "#{roman_array.join('')}"
  roman_array.each do |letter|
    puts "#{letter.downcase}"
    next_letter = roman_array[index+1]
    if next_letter != nil && special_case(letter+next_letter) != 0
      number += (special_case(letter+next_letter)-roman_values[next_letter])
    else
      number += roman_values[letter]
    end
    index +=1
  end
  number
end

def special_case pair
  special_cases_values = { 'CM' => 900, 'CD' => 400, 'XC' => 90, 'XL' => 40, 'IX' => 9, 'IV' => 4}
  special_cases_values.keys.each do |special_case|
    return special_cases_values[pair] if pair == special_case
  end
  0
end


p roman_to_integer 'mcmxcix'
p roman_to_integer 'XXX'
